<?php

use App\Author;
use App\Category;
use App\CategoryProduct;
use App\Price;
use App\Product;
use App\ProductFail;
use App\Stock;
use App\StockHistory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $file = file_get_contents(public_path('products.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 10);
      $authorId = null;
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          if($rec->name){
            $author  = Author::where('author_slug' , slugify($rec->name))->first();
            
            if($author == null){
              $author = [
                'name' => $rec->name,
                'author_slug' => slugify($rec->name),
                'top' => $rec->top
              ];
              $author = Author::create($author);
            }
            $authorId = $author->id;
          }
          $product = [
            "title" => $rec->title,
            "slug" => $rec->slug,
            "thumbnail" => $rec->thumbnail,
            "image" => $rec->image,
            "isbn" => $rec->isbn,
            "description" => $rec->description,
            "details" => $rec->details,
            "author_id" => $authorId,
            "price" => $rec->price,
            "language_id" => $rec->language_id,
            "age_id" => $rec->age_id,
          ];
          $productRec = Product::where('slug' , $product['slug'])->first();
          if($productRec == null){
            $product = Product::create($product);
            foreach($rec->categories as $cat){
              // dd($cat);
              CategoryProduct::create([
                'product_id' => $product->id,
                'category_id' => $cat->category_id
              ]);
            }
            Price::create(['price' => $product->price , 'product_id' => $product->id]);
          }
        }
      }
      $file = file_get_contents(public_path('system_products.json'));
      $products = json_decode($file);
      $chunks = array_chunk($products , 10);
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
              'branch' => $item->branch_id,
              'product' => $id,
              'in' => $qty,
            ];
            defineItemStock($rec);
          }
      }}
      // $file = file_get_contents(public_path('products_fail.json'));
      // $catProduct = json_decode($file);
      // $chunks = array_chunk($catProduct , 500);
      // foreach($chunks as $chunk){
      //   foreach($chunk as $rec){
      //     $rec = [
      //       'isbn' => $rec->isbn,
      //     ];
      //   }
      //   ProductFail::create($rec);
      // }
    }
}
