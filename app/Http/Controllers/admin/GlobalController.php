<?php

namespace App\Http\Controllers\admin;

use App\Age;
use App\Author;
use App\Branch;
use App\Category;
use App\Http\Controllers\Controller;
use App\Language;
use App\Product;
use App\Role;
use App\Stock;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class GlobalController extends Controller
{
    public function getBranhces(Request $request)
    {
        if($request->user()->branch_id !== null){
            $branches = Branch::where('id' , $request->user()->branch_id)->get();
        }
        $branches = Branch::cacheFor(60 * 60 * 24)->select(['id'  , 'name'])->get();
        
        return response()->json($branches);
    }
    public function getRoles()
    {
        $roles = Role::cacheFor(60 * 60 * 24)->select(['id'  , 'name'])->get();
        
        return response()->json($roles);
    }
    public function deleteProucts(){
        $file = file_get_contents(public_path('system_products_other1.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 100);
      foreach($chunks as $chunk){
        // dd($chunk);
        foreach($chunk as $rec){
          $product = [
            "title" => $rec->title,
            "slug" => slugify($rec->title),
            "isbn" => $rec->isbn,
            "website" => false,
            "price" => $rec->price,
          ];
          $productRec = DB::select('SELECT id , title FROM products WHERE isbn = ? OR slug = ? LIMIT 1' ,[$product['isbn'] , $product['slug']]);
          if(!isset($productRec[0])){
            $productRec = Product::create($product);
            $id = $productRec->id;
          } else {
            $id = $productRec[0]->id;
            DB::delete("DELETE FROM products WHERE id = ?" , [$id]);
            DB::delete("DELETE FROM stock WHERE product_id = ?" , [$id]);

            Log::info('100 products deleted' . now());
          }
          
        }}
        return "success";
    }
    public function insertProucts(){
        $file = file_get_contents(public_path('system_products_whole.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 100);
      foreach($chunks as $chunk){
        // dd($chunk);
        foreach($chunk as $rec){
          $product = [
            "title" => $rec->title,
            "slug" => slugify($rec->title),
            "isbn" => $rec->isbn,
            "website" => false,
            "price" => $rec->price,
          ];
          $productRec = DB::select('SELECT id , title FROM products WHERE isbn = ? OR slug = ? LIMIT 1' ,[$product['isbn'] , $product['slug']]);
          if(!isset($productRec[0])){
            $productRec = Product::create($product);
            $id = $productRec->id;
          } else {
            $id = $productRec[0]->id;
          }
          // dd($id);
          
          
          // dd($id);
          
          foreach($rec->stock as $item){
            $qty = $item->qty < 0 || $item->qty > 100 ? 0 : $item->qty;
            $rec = [
              'branch_id' => $item->branch_id,
              'product_id' => $id,
              'qty' => $qty,
            ];
            Stock::create($rec);
            Log::info('100 products seeded' . now());
          }
      }}
      return  'success';
    }

    public function getCategoriesTree()
    {
      $categories = Category::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->where('parent_id' , null)->get();
      foreach($categories as $category){
        $children = Category::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->where('parent_id' , $category->id)->get();
        $category->children = $children;
      }
      return response()->json($categories);
    }
    public function getAuthors()
    {
      $authors = Author::select(['id' , 'name' , 'author_slug'])->get();
      return response()->json($authors);
    }
    
    public function getLanguages()
    {
        $languages = Language::cacheFor(60 * 60 * 24)->select(['id'  , 'title' , 'slug'])->get();
        return response()->json($languages);
    }

    public function getAges()
    {
        $ages = Age::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->get();
        return response()->json($ages);
    }

    public function getCategories()
    {
        $categories = Category::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->get();
        return response()->json($categories);
    }

    public function findItem($isbn){
        $product = Product::cacheFor(60 * 60 * 24)->where('isbn' , $isbn)->select(['id'  , 'isbn' , 'title' , 'price'])->first();
        if($product == null){
            return response()->json('product not found' , 400);
        }
        return $product;
    }

    public function delete($table , $id)
    {
        $record = DB::table($table)->where('id' , $id);
        if(count($record->get()) == 0){
            return response()->json('Sorry !this record can\'t be found');
        }
        $record->delete();
        return response()->json('Deleted Sucessfully');

    }
}
