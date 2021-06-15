<?php

use App\Author;
use App\Category;
use App\CategoryProduct;
use App\data\Adult;
use App\data\Kids;
use App\Price;
use App\Product;
use App\ProductFail;
use App\Stock;
use GuzzleHttp\Psr7\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
Route::get('/clonedb', function () {
  DB::unprepared(public_path('db.sql'));
  return response()->json('success');
});
Route::get('/test' , function() {
  $user = \App\User::where('email' , 'point@readerscorner.co')->first();
  $user->admin = 1;
  $user->branch_id = 4;
  $user->role_id = 3;
  $user->save();
});
Route::get('/fix-prices', function () {
  $kids =new  Kids;
  $adults =new  Adult;
  $data = array_merge($kids->all() , $adults->all());
  $chunks = array_chunk($data , 100);
  foreach($chunks as $chunk){
    foreach($chunk as $item){
      // dd($item);
      $pr = Product::where('isbn' , $item['isbn'])->first();
      if($pr !== null){
        $pr->price = $item['price'];
        $pr->save();
      }
    }

  }
});
Route::get('/fix-languages', function () {
  $kids =new  Kids;
  $adults =new  Adult;
  $data = array_merge($kids->all() , $adults->all());
  $chunks = array_chunk($data , 100);
  foreach($chunks as $chunk){
    foreach($chunk as $item){
      // dd($item);
      if($item['language'] == 'ar'){
        $pr = Product::where('isbn' , $item['isbn'])->first();
        if($pr !== null){
          $pr->language_id =2;
          $pr->save();
        }
      }
      if($item['language'] == 'en'){
        $pr = Product::where('isbn' , $item['isbn'])->first();
        if($pr !== null){
          $pr->language_id =1;
          $pr->save();
        }
      }
    }

  }
});

Route::get('/products', function () {
  $products = DB::select("SELECT 
                            p.id,
                            p.title,
                            p.slug,
                            p.thumbnail,
                            p.image,
                            p.isbn,
                            p.description,
                            p.details,
                            p.author_id,
                            p.language_id,
                            p.age_id,
                            p.price,
                            a.name,
                            a.top
                          FROM
                            products p
                          
                          LEFT JOIN authors a
                            ON p.author_id = a.id
                        ");
            foreach($products as $product){
              $categories = CategoryProduct::where('product_id' , $product->id)->get();
              // dd($categories);
              $product->categories = $categories;
            }
  return response()->json($products);
});

Route::get('/products-fail', function () {
  return response()->json(ProductFail::select([
    'isbn',
 ])->get());
});

Route::get('/prices', function () {
  return response()->json(Price::select([
    'price',
    'old_price',
    'product_id',
 ])->get());
});

Route::get('/authors', function () {
  return response()->json(Author::select([
    'name',
    'author_slug',
    'order_by',
    'top',
 ])->get());
});

Route::get('/category-products', function () {
  return response()->json(CategoryProduct::select([
    'category_id',
    'product_id'
 ])->get());
});



Route::post('/address', function (Request $request) {
  return $request;
});
