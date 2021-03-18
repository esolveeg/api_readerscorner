<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Inventory;
use App\InventoryProduct;
use App\Product;
use App\Stock;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InventoryController extends Controller
{
    public function get(Request $request)
    {
        $offset =   $request->show * ($request->page - 1);
        if($request->user()->branch_id == null){
            $documents = DB::select("SELECT 
                                       d.id, d.user_id , d.created_at , d.updated_at, d.branch_id , u.name created_by , b.name branch_name    , d.created_at
                                    FROM inventories d 
                                    JOIN users u ON d.user_id = u.id 
                                    JOIN branches b ON d.branch_id = b.id 
                                    WHERE d.closed_at  IS NULL
                                    ORDER BY d.created_at DESC
                                    LIMIT ?
                                    OFFSET ?
                                    " , [$request->show , $offset]);
        } else {
            $documents = DB::select("SELECT 
                                        d.id , d.user_id , d.created_at , d.updated_at, d.branch_id , u.name created_by , b.name branch_name    , d.created_at
                                    FROM inventories d 
                                    JOIN users u ON d.user_id = u.id 
                                    JOIN branches b ON d.branch_id = b.id 
                                    WHERE d.closed_at  IS NULL
                                    AND d.branch_id = ?
                                    ORDER BY d.created_at DESC
                                    LIMIT ?
                                    OFFSET ?
                                    " , [ $request->user()->branch_id ,$request->show , $offset]);
        }
        // dd($request->page);
        return response()->json($documents);
    }

    public function updateQty($id , Request $request)
    {
        $record = InventoryProduct::find($id);
        $record->qty = $request->qty;
        $record->save();
        return response()->json($record->inventory_id);
    }
    
    public function find($id)
    {
        $document = Inventory::find($id);
        return response()->json($document);
    }

    public function close($id)
    {
        $document = Inventory::find($id);
        $items = DB::select("SELECT ip.qty , ip.real_qty , ip.product_id FROM inventory_product ip WHERE inventory_id = ?" , [$id]);
        foreach($items as $item){
            $rec = [
                "product_id" => $item->product_id,
                "branch_id" => $document->branch_id,
                "qty" => $item->qty,
            ];
            Stock::create($rec);
        }

        $document->closed_at = now();
        $document->save();
        return response()->json("stock updated successfully");
    }
    public function findItems(Request $request)
    {
        $offset =   $request->show * ($request->page - 1);
        // $document = Inventory::find($id);
        $items = DB::select("SELECT 
                            SQL_CALC_FOUND_ROWS ip.id , p.title , p.isbn , ip.qty , ip.real_qty , (ip.qty - ip.real_qty) `difference` 
                            FROM inventory_product ip 
                            JOIN products p 
                                ON ip.product_id = p.id 
                            WHERE inventory_id = ? 
                            LIMIT ?
                            OFFSET ?" , [$request->doc , $request->show , $offset]);
        $count = DB::select("SELECT FOUND_ROWS() total")[0]->total;
        // dd($count);

        return response()->json(['items' => $items , 'total' => $count]);
    }
    public function create(Request $request)
    {
        $branch = $request->user()->branch_id == null ? $request->branch : $request->user()->branch_id; 
        $rec = [
            "user_id" => $request->user()->id,
            "branch_id" => $branch
        ];
        $document = Inventory::create($rec);
        return response()->json($document);
    }
    public function insertItem(Request $request)
    {
        $product = Product::where("isbn" , $request->product)->first();
        // dd($product);
        $document = Inventory::find($request->doc);
        $qty = getItemStock($product->id , $document->branch_id);
        $item = InventoryProduct::where('product_id' , $product->id)->where('inventory_id' , $document->id)->first();
        if($item == null){
            $rec = [
                "product_id" => $product->id,
                "inventory_id" => $document->id,
                "qty" => $request->qty,
                "real_qty" => $qty,
            ];
            InventoryProduct::insert([$rec]);
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
}
