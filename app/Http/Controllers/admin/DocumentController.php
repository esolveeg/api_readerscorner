<?php

namespace App\Http\Controllers\admin;

use App\Document;
use App\DocumentProduct;
use App\Http\Controllers\Controller;
use App\Product;
use App\QueryFilters\globals\BranchFilter;
use App\QueryFilters\globals\ClosedFilter;
use App\Stock;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

class DocumentController extends Controller
{
    public function get()
    {
        $pipeline = app(Pipeline::class)->send(Document::query()->select(['documents.id' , 'users.name AS created_by' , 'documents.closed_at' , 'branches.name AS branch_name' , 'documents.created_by' , 'documents.created_at' , 'documents.updated_at' , 'documents.branch_id'])->join('users', 'created_by', '=', 'users.id')->join('branches', 'documents.branch_id', '=', 'branches.id')
        ->orderBy('created_at', 'DESC'))->through([
            ClosedFilter::class,
            BranchFilter::class,
        ])->thenReturn();
        return response()->json($pipeline->get());
    }
    public function find($id)
    {
       $document = Document::find($id);
        return response()->json($document);
    }
    
    public function create(Request $request)
    {
        if(!isset($request->type)){
            return response()->json('type is required' , 400);
        }
        // $branch = $request->user()->branch_id ?  $request->user()->branch_id : $request->branch;
        if($request->user()->branch_id){
            $branch = $request->user()->branch_id;
        }else {
            if(!$request->branch){
                return response()->json('branch is required' , 400);
            }
            $branch = $request->branch;
        }
        // dd($branch);
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
        $offset =   $request->show * ($request->page - 1);
        $items = DB::select("SELECT 
                            SQL_CALC_FOUND_ROWS dp.id , p.title , p.isbn , dp.qty , dp.real_qty
                            FROM document_product dp 
                            JOIN products p 
                                ON dp.product_id = p.id 
                            WHERE document_id = ? 
                            LIMIT ?
                            OFFSET ?" , [$request->doc , $request->show , $offset]);
        $count = DB::select("SELECT FOUND_ROWS() total")[0]->total;
        // dd($count);

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
        $product = Product::where("isbn" , $request->product)->first();
        // dd($product);
        $document = Document::find($request->doc);
        $qty = getItemStock($product->id , $document->branch_id);
        // dd($qty);
        $qtyTo =  $document->branch_to ? getItemStock($product->id , $document->branch_to) : null;
        $item = DocumentProduct::where('product_id' , $product->id)->where('document_id' , $document->id)->first();
        if($item == null){
            $rec = [
                "product_id" => $product->id,
                "document_id" => $document->id,
                "price" => $product->price,
                "old_price" => $product->old_price,
                "qty" => $request->qty,
                "real_qty" => $qty,
                "real_qty_to" => $qtyTo,
            ];
            DocumentProduct::insert([$rec]);
        }else {
            $item->qty = $item->qty + $request->qty;
            $item->save();
        }
        $item = [
            "isbn" => $product->isbn,
            "title" => $product->title,
            "price" => $product->price,
        ];
        return response()->json($item);
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
