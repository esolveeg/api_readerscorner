<?php

namespace App\Http\Controllers\admin;

use App\CategoryProduct;
use App\Document;
use App\DocumentProduct;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreateProduct;
use App\Product;
use App\QueryFilters\globals\BranchFilter;
use App\QueryFilters\globals\ClosedFilter;
use App\QueryFilters\globals\TypeFilter;
use App\QueryFilters\documents\SearchFilter;
use App\QueryFilters\documents\SearchIemFilter;
use App\QueryFilters\globals\FromFilter;
use App\QueryFilters\globals\ToFilter;
use App\Stock;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class DocumentController extends Controller
{
    public function get(Request $request)
    {
        $request = handleListRequest($request);
        $pipeline = app(Pipeline::class)->send(Document::query()->select(
            [
                'documents.type',
                'documents.id',
                'users.name AS created_by',
                'documents.closed_at',
                'branches.name AS branch_name',
                'documents.created_at',
                'documents.updated_at',
                'documents.branch_id'
            ])
            ->where('documents.type' , $request->type)
            ->join('users', 'created_by', '=', 'users.id')
            ->leftJoin('branches', 'documents.branch_id', '=', 'branches.id')
            ->orderBy('created_at', 'DESC'))->through([
                ClosedFilter::class,
                BranchFilter::class,
                TypeFilter::class,
                FromFilter::class,
                ToFilter::class,
                SearchFilter::class,
            ])->thenReturn();
        $count = $pipeline->count();
        $items = $pipeline->skip($request->offset)->take($request->show)->get();
        // dd($items);
        // dd($count);
        return response()->json(['items' => $items , 'total' => $count]);
    }

    public function find($id)
    {
       $document = Document::find($id);
       $subtotal = DB::select("SELECT SUM(price * qty) subtotal FROM document_product WHERE document_id = ? " ,[ $document->id])[0]->subtotal;
       $discountVal = 0;
       //check if discount value is set 
       if($document->discount_value != null && $subtotal !== null){
           $discountVal = $document->discount_value;
        //check if discount percent is set
       } else if($document->discount_percent != null && $subtotal !== null){
           //calculate discount value with discount percent
           $discountVal = $document->discount_percent * $subtotal / 100;
        }
        // dd($discountVal);
       $document->subtotal = $subtotal;
       $document->discount_value = $discountVal;
       $document->total = $subtotal - $discountVal;
       $items = $this->loadItems($document->id);
       $document->products = $items->get();
       $document->created_by = User::find($document->created_by)->name;


        return response()->json($document);
    }

    public function createReturn(Request $request)
    {
        $document = Document::where('closed_at' , '!=' , null)->where('type' , $request->type)->where('id' , $request->document);
        if($request->user()->branch_id !== null){
            $document = $document->where('branch_id' , $request->user()->branch_id);
        }
        $document = $document->first();
        if($document == null){
            return response()->json('no document with this id' , 400);
        }
        $type = $request->type == 0 ? 3 : 1;
        $rec = [
            "created_by" => $request->user()->id,
            "branch_id" => $document->branch_id,
            "document_id" => $document->id,
            "type" => $type,
        ];
        $newDocument = Document::create($rec);
        return response()->json($newDocument);
    }

    public function create(Request $request)
    {
        // validate doc type is required
        if(!isset($request->type)){
            return response()->json('type is required' , 400);
        }
        // validate that branch is required
        // execlude the define document from requiring branch beacause he dosn't need it
        // set branch to use branch if there is one
        // return error if branch is required and not provided
        $branch = null;
        if($request->type !== 5){
            if($request->user()->branch_id){
                $branch = $request->user()->branch_id;
            }else {
                if(!$request->branch_id){
                    return response()->json('branch is required' , 400);
                }
                $branch = $request->branch_id;
            }
        }
        // validate that to branch is required && it's required onlyt on transactions documents
        // set branch to use branch if there is one
        // return error if branch is required and not provided
        if($request->type === 7 && !$request->branch_to){
            return response()->json('branch to is required' , 400);
        }

        //check if document is first balance to reset stock on the document branch
        if($request->type == 6){
            DB::delete("DELETE FROM stock WHERE branch_id" , [$request->branch_id]);
        }

        $document = Document::create([
            "created_by" => $request->user()->id,
            "account_id" => $request->account_id,
            "branch_to" => $request->branch_to,
            "type" => $request->type,
            "discount_percent" => $request->discount_percent,
            "branch_id" => $branch
        ]);
        return response()->json($document);
    }
    public function update(Request $request , $doc)
    {

        // validate that branch is required
        // execlude the define document from requiring branch beacause he dosn't need it
        // set branch to use branch if there is one
        // return error if branch is required and not provided
        $document = Document::find($doc);
        if($document->type !== 5){
            if($request->user()->branch_id){
                $request->merge([
                    'branch_id' => $request->user()->branch_id
                ]);
            }else {
                if(!$request->branch_id){
                    return response()->json('branch is required' , 400);
                }
            }
        }
        // validate that to branch to is required && it's required onlyt on transactions documents
        // set branch to use branch if there is one
        // return error if branch is required and not provided
        if($document->type === 7 && !$request->branch_to){
            return response()->json('branch to is required' , 400);
        }

        $document->update($request->except(['doc' , 'type' , 'discount_value' , 'created_at' , 'closed_at']));
        return response()->json($document);
    }


    public function close($id)
    {
        $document = Document::find($id);
        $items = DocumentProduct::where('document_id' , $id)->get();
        if(count($items) == 0){
            return response()->json('document has no items' , 400);

        }
        foreach($items as $item){
            //reflect stock change to sync
            $item->qty_current = getItemStock($item->product_id , $document->branch_id);
            $item->save();
            
            $rec = [
                "product" => $item->product_id,
                "branch" => $document->branch_id,
            ];
            //check if doc type is sell or buy return to perform minus
            if($document->type <= 1){
                $rec['out'] = $item->qty;
            } 
            //check if doc type is buy or sell return to perform plus
            if($document->type >= 2 && $document->type <= 3){
                $rec['in'] = $item->qty;
            }

            //check if doc type is inventory or define or first balance 
            if($document->type >= 4 && $document->type <= 6){
                $rec['in'] = $item->qty ;
                if($document->type !== 5){
                    defineItemStock($rec);
                }
            }

            //check if doc type is transaction
            if($document->type == 7){
                $rec['out'] = $item->qty;
                $toRec = [
                    "product" => $item->product_id,
                    "branch" => $document->branch_to,
                    "in" => $item->qty,
                ];
                addItemStock($toRec);
            }
            //execlude inventory & define & first balance to add stock
            ($document->type < 6  && $document->type >= 4) ? '' : addItemStock($rec);           
        }
        $document->closed_at = now();
        $document->save();
        $document->products = $items;
        return response()->json($items);
    }
    public function findItems(Request $request)
    {
        $request = handleListRequest($request);
        
        $pipeline = $this->loadItems($request->doc);
        
        $count = $pipeline->count();
        $items = $pipeline->skip($request->offset)->take($request->show)->get();  
        return response()->json(['items' => $items , 'total' => $count]);
    }

    private function loadItems($doc){
        return app(Pipeline::class)->send(DocumentProduct::query()->select(
            [
                'document_product.id',
                'document_product.price',
                'document_product.document_id',
                'document_product.created_at',
                'products.title',
                'products.isbn',
                'document_product.qty_current',
                'document_product.qty',
                'document_product.branch_to_qty_current',
            ])
            ->where('document_product.document_id' , $doc)
            ->join('products', 'document_product.product_id', '=', 'products.id')
            ->orderBy('created_at', 'DESC'))->through([
                SearchIemFilter::class,
            ])->thenReturn();
       
    }

    public function attachAccount($id , Request $request)
    {
        $document = Document::find($id);
        $document->account_id = $request->account;
        $document->save();
        return response()->json($document);
    }

    public function detachAccount($id)
    {
        $document = Document::find($id);
        $document->account_id = null;
        $document->save();
        return response()->json($document);
    }


    public function attachDiscount($id , Request $request)
    {
        $document = Document::find($id);
        if($request->percent){
            $document->discount_percent = $request->percent;
            $document->save();
            return response()->json($document);
        }
        $document->discount_value = $request->value;
        $document->save();
        return response()->json($document);
    }

    public function detachDiscount($id)
    {
        $document = Document::find($id);
        $document->discount_percent = null;
        $document->discount_value = null;
        $document->save();
        return response()->json($document);
    }

    public function findItem($id)
    {
        return DocumentProduct::find($id);
    }

    public function insertDocItem(Request $request)
    {
        //get document
        $document = Document::find($request->doc);
        // get the product
        $product = Product::where("isbn" , $request->isbn)->first();
        //cueck if document is not define products to set quantites
        $item = DocumentProduct::where('product_id' , $product->id)->where('document_id' , $document->id)->first();
        // dd($product);
        if($item !== null ){
            // dd('hi');
            if($document->type >= 4 && $document->type <= 6){
                $item->qty = $request->qty;
                return $item;
            }
            $item->qty = $item->qty + $request->qty;
            $item->save();
            return $item;
        }
        //define qty current to null
        $qtyCurrent = 0;
        $branchToQtyCurrent = 0;
        if($document->type !== 5){
            //validate qty is required if doc dosnt define products
            if(!isset($request->qty)){
                return response()->json('quantity is required' , 400);
            }
            $qtyCurrent = getItemStock($product->id , $document->branch_id);
        }
        //check if doc type is transaction
        if($document->type == 7){
            $branchToQtyCurrent = getItemStock($product->id , $document->branch_to);
        }

        $rec = [
            "product_id" => $product->id,
            "document_id" => $document->id,
            "price" => $product->price,
            "old_price" => $product->old_price,
            "qty_current" => $qtyCurrent,
            "qty" => $request->qty,
            "branch_to_qty_current" => $branchToQtyCurrent,
        ];
        //get item in case it existed
        
        $rec = DocumentProduct::insert([$rec]);
        
        return response()->json($rec);
    }

   

    public function updateQty($id , $qty)
    {
        $record = DocumentProduct::find($id);
        $record->qty = $qty;
        $record->save();
        return response()->json($record);
    }
}
