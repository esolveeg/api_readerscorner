<?php

use App\Category;
use App\CategoryProduct;
use App\Price;
use App\Product;
use App\ProductFail;
use App\Stock;
use Illuminate\Database\Seeder;

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
      $chunks = array_chunk($products , 500);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          $rec = [
            "title" => $rec->title,
            "slug" => $rec->slug,
            "thumbnail" => $rec->thumbnail,
            "image" => $rec->image,
            "isbn" => $rec->isbn,
            "description" => $rec->description,
            "details" => $rec->details,
            "author_id" => $rec->author_id,
            "language_id" => $rec->language_id,
            "age_id" => $rec->age_id,
          ];
          $product = Product::create($rec);
          $stock = ['product_id' => $product->id , 'qty' => 3];
          Stock::create($stock);
        }
      }
      $file = file_get_contents(public_path('category_product.json'));
      $catProduct = json_decode($file);
      $chunks = array_chunk($catProduct , 500);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          $rec = [
            'category_id' => $rec->category_id,
            'product_id' => $rec->product_id,
          ];
          CategoryProduct::create($rec);
        }
      }
      $file = file_get_contents(public_path('prices.json'));
      $prices = json_decode($file);
      $chunks = array_chunk($prices , 500);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          $rec = [
            'product_id' => $rec->product_id,
            'price' => $rec->price,
          ];
          Price::create($rec);
        }
      }

      $file = file_get_contents(public_path('products_fail.json'));
      $catProduct = json_decode($file);
      $chunks = array_chunk($catProduct , 500);
      foreach($chunks as $chunk){
        foreach($chunk as $rec){
          $rec = [
            'isbn' => $rec->isbn,
          ];
        }
        ProductFail::create($rec);
      }
    }
}
