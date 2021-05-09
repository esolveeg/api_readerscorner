<?php

namespace App\Http\Controllers;

use App\Account;
use App\Age;
use App\Branch;
use App\CategoryProduct;
use App\Price;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GlobalController extends Controller
{
    public function delete($table , $id)
    {
        $record = DB::table($table)->where('id' , $id);
        if(count($record->get()) == 0){
            return response()->json('Sorry !this record can\'t be found');
        }
        $record->delete();
        return response()->json('Deleted Sucessfully');

    }
   

    public function customers()
    {
        $supplies = Account::where('type' , 0)->get();
        return response()->json($supplies);
    }


    public function homeProducts()
    {
        $key ='home';
        $products = Product::with('keys')->whereHas('keys', function ($query)  use ($key){
            $query->where('slug', $key);
        })->get();
        return response()->json($products);

    }

    public function seedPrices(){
        $products = Product::select(['id' , 'price'])->get();
        foreach($products as $product){
            if(Price::where('product_id' , $product->id)->first() == null){
                $price = [
                    'price' => $product->price,
                    'product_id' => $product->id,
                ];
                Price::create($price);
            }
        }
        return response()->json('seeded succesfully');

    }

    

    public function deleteCart(){
        DB::delete("DELETE FROM cart;");
    }

    public function seedCategories(){
        $products = CategoryProduct::where('category_id' , 4)->get();
        // dd($products);
        foreach($products as $product){
            $rec =  [ 
                'product_id' => $product->id,
                'category_id' => 5,
            ];
            CategoryProduct::create($rec);

        }
        return response()->json('seeded succesfully');

    }
}
