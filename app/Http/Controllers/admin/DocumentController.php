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
use App\Stock;
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
            ->join('users', 'created_by', '=', 'users.id')
            ->leftJoin('branches', 'documents.branch_id', '=', 'branches.id')
            ->orderBy('created_at', 'DESC'))->through([
                ClosedFilter::class,
                BranchFilter::class,
                TypeFilter::class,
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
        return response()->json($document);
    }

    public function create(Request $request)
    {
        // [(-)[0 : sell , 1 : buy return  ] , (+)[2 : buy , 3 : sell return ], (=)[4 : inventory , 5 : define , 6 : first balance] , (+ , -)[7 : transactions]]
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
                if(!$request->branch){
                    return response()->json('branch is required' , 400);
                }
                $branch = $request->branch;
            }
        }
        // validate that to branch is required && it's required onlyt on transactions documents
        // set branch to use branch if there is one
        // return error if branch is required and not provided
        if($request->type === 7 && !$request->branch_to){
            return response()->json('branch is required' , 400);
        }

        $document = Document::create([
            "created_by" => $request->user()->id,
            "account_id" => $request->account,
            "branch_to" => $request->branch_to,
            "type" => $request->type,
            "branch_id" => $branch
        ]);
        return response()->json($document);
    }


    public function close($id)
    {
        $document = Document::find($id);
        $items = DB::select("SELECT dp.qty , dp.real_qty , dp.product_id FROM document_product dp WHERE document_id = ?" , [$id]);

        foreach($items as $item){
            $rec = [
                "product" => $item->product_id,
                "branch" => $document->branch_id,

            ];
            // dd($document->type < 6  && $document->type >= 4);
            switch (true) {
                case $document->type <2:
                   $rec['out'] = $item->qty;
                    break;

                case $document->type < 4 && $document->type >= 2:
                    $rec['in'] = $item->qty;
                    break;
                case $document->type < 6  && $document->type >= 4:
                    $rec['in'] = $item->qty ;
                    defineItemStock($rec);
                    break;

                case $document->type == 7:
                    $rec['out'] = $item->qty ;
                    $toRec = [
                        "product" => $item->product_id,
                        "branch" => $document->branch_to,
                        "in" => $item->qty,
                    ];
                    addItemStock($toRec);
                    break;
                 default:

                    break;
            }

            // dd($rec);
            //check if document type is sell or buy return
            // if($document->type < 2){
            //     $rec['out'] = $item->qty ;
            //     //check if document type is buy or sell return
            // }else if($document->type < 4 && $document->type > 1){
            //     $rec['in'] = $item->qty;
            //     //check if document type is inventory or define or first balance
            // } else if($document->type < 6  && $document->type > 3){
            //     $rec['in'] = $item->qty ;
            //     defineItemStock($rec);
            //     //chec if document type is transaction
            // } else {
            //     $rec['out'] = $item->qty ;
            //     $toRec = [
            //         "product_id" => $item->product_id,
            //         "branch_id" => $document->branch_to,
            //         "in" => $item->qty,
            //     ];
            //     addItemStock($toRec);
            // }
            //execlude inventory & define & first balance to add stock
            ($document->type < 6  && $document->type >= 4) ? '' : addItemStock($rec);
        }
        $document->closed_at = now();
        $document->save();
        return response()->json("stock updated successfully");
    }
    public function findItems(Request $request)
    {
        $request = handleListRequest($request);
        
        $pipeline = app(Pipeline::class)->send(DocumentProduct::query()->select(
            [
                'document_product.id',
                'document_product.price',
                'document_product.document_id',
                'document_product.created_at',
                'products.title',
                'products.isbn',
                'document_product.qty',
                'document_product.real_qty',
            ])
            ->where('document_product.document_id' , $request->doc)
            ->join('products', 'document_product.product_id', '=', 'products.id')
            ->orderBy('created_at', 'DESC'))->through([
                SearchIemFilter::class,
            ])->thenReturn();
        $count = $pipeline->count();
        $items = $pipeline->skip($request->offset)->take($request->show)->get();
        

        return response()->json(['items' => $items , 'total' => $count]);
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

    public function insertDocItem(Request $request)
    {
        //get document
        $document = Document::find($request->doc);
        //[0 : sell , 1 : buy return  ] , (+)[2 : buy , 3 : sell return ], (=)[4 : inventory , 5 : define , 6 : first balance] , (+ , -)[7 : transactions]]
        //check if document type is define
        // get the product
        $product = Product::where("isbn" , $request->product)->first();
        // get product qty on the document branch
        $qty = getItemStock($product->id , $document->branch_id);
        // get product desired  qty on the document branch
        $qtyTo =  $document->branch_to ? getItemStock($product->id , $document->branch_to) : null;

        $item  = $this->insertDocProduct($product , $document , $qty , $qtyTo);

        return response()->json($item);
    }

    private function insertDocProduct($product , $document , $qty = 0 , $qtyTo = 0){

        // dd($qty);
        $item = DocumentProduct::where('product_id' , $product->id)->where('document_id' , $document->id)->first();
        if($item == null){
            $rec = [
                "product_id" => $product->id,
                "document_id" => $document->id,
                "price" => $product->price,
                "old_price" => $product->old_price,
                "qty" => $qty,
                "real_qty" => $qty,
                "real_qty_to" => $qtyTo,
            ];
            DocumentProduct::insert([$rec]);
        }else {
            $item->qty = $item->qty + $qty;
            $item->save();
        }
        $item = [
            "isbn" => $product->isbn,
            "title" => $product->title,
            "price" => $product->price,
        ];
        return $item;
    }

    public function updateQty($id , $qty)
    {
        // dd($qty);
        $record = DocumentProduct::find($id);
        $record->qty = $qty;
        $record->save();
        return response()->json($record->document_id);
    }
}
