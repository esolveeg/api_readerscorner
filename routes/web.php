<?php

use App\Branch;
use App\Product;
use App\Stock;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

Route::get('products',function () {
  return response()->json(Product::select([
    'id',
  'name',
  'isbn',
    'price',
 ])->orderBy('id')->limit(6000)->offset(10000)->get());
});
Route::get('stock',function () {
  
  return response()->json(DB::select("SELECT s.id , s.product_id , s.qty, s.branch_id , p.isbn FROM stocks s JOIN products p ON p.id = s.product_id GROUP BY s.product_id" ));
});
Route::get('stock-insert',function () {
  $mapper = [
    //point
    [1,4],
    //arkan
    [2,5],
    //main
    [3,2],
    //uptown
    [4,3],
    //marasi
    [5,6],
    //lavista
    [6,7],
  ];
  $file = file_get_contents(public_path('db-json/stock.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 1000);
      // dd($chunks);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          foreach($mapper as $map){
            $map[0] == $rec->branch_id ? $rec->branch_id = $map[1] : '';
          }
          $product = Product::where('isbn' , $rec->isbn)->first();
          if($product && $rec->branch_id !=  null){
            $id = $product->id;
            $in = $rec->qty > 0 ? $rec->qty : 0;
            $out = $rec->qty < 0 ? abs($rec->qty) : 0;
            $stock = ['product_id' => $id , 'branch_id' => $rec->branch_id , 'in' =>$in , 'out' => $out];
            Stock::create($stock);
          } 
        }
      }
  
  
  return 'success';
});


Route::get('products-insert',function () {
  $file = file_get_contents(public_path('db-json/products-3rd-5341.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 1000);
      // dd($chunks);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          $product = Product::where('isbn' , $rec->isbn)->orWhere('slug' , slugify($rec->name))->first();
          if($product){
            
          } else {
            $product = [
              "title" => $rec->name,
              "slug" => slugify($rec->name),
              "isbn" => $rec->isbn,
              "price" => $rec->price,
              "website" => false
            ];
            $product = Product::create($product);

          }
        }
      }

      return 'success';
});