<?php

use App\keyProduct;
use App\Price;
use App\Product;
use Illuminate\Database\Seeder;

class KeyProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = Product::limit(12)->orderBy('id')->pluck('id');
        foreach($products as $product){
            keyProduct::create([
                'product_id' => $product,
                'key_id' => 1,
            ]);
        }


        $products = Product::limit(4)->orderBy('title')->pluck('id');
        foreach($products as $product){
            keyProduct::create([
                'product_id' => $product,
                'key_id' => 2,
            ]);
        }

        // $products = Product::limit(12)->orderBy('author_id')->pluck('id');
        // foreach($products as $product){
        //     $price = Price::where('product_id' , $product)->first();
        //     if($price !== null){
        //         $price->old_price = $price->price;
        //         // dd($price->price);
        //         $price->price = $price->price - ($price->price * 30 /100);
        //         $price->save();
        //     }
        //     keyProduct::create([
        //         'product_id' => $product,
        //         'key_id' => 3,
        //     ]);
        // }
    }
}
