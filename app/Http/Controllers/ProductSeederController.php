<?php

namespace App\Http\Controllers;

use App\Age;
use App\Category;
use App\CategoryProduct;
use App\data\Kids;
use App\data\Adult;
use App\Language;
use App\Price;
use App\Product;
use App\ProductFail;
use App\Stock;


class ProductSeederController extends Controller
{
    public function seedAll(){
        $kids = new Kids;
        $this->insert($kids->all() , 'kids');
        $adults = new Adult;
        $this->insert($adults->all() , 'adults');
        return response()->json('seeded successfully');
    }
    private function insert($collection , $category)
    {
        // dd(Product::where('slug' ,'Little-Spider\'s-Shapes')->first());
        foreach($collection as $product){
            $isbn = isset($product['isbn']) ? $product['isbn'] : null;
            // dd($isbn);
            if(isset($product['isbn'])){
                $isbn = $product['isbn'];
                if(isset($product['age']) && $product['age'] !== ''){
                    $age = Age::where('slug' , $product['age'])->first()->id;
                }
               
                $currProduct = Product::where('isbn' , $isbn)->first();
                if($currProduct !== null){
                    if(Price::where('product_id' , $currProduct->id)->first() == null){
                        Price::create(['product_id' => $currProduct->id , 'price' => $product['price']]);
                    }
                    if(isset($product['age']) && $product['age'] !== null){
                        if($age !== $currProduct->age_id ){
                            $currProduct->age_id = $age;
                            $currProduct->save();
                        }
                        Price::create(['product_id' => $currProduct->id , 'price' => $product['price']]);
                    }
                   
                } else {
                    // dd(Age::where('slug' , $product['age'])->first()->id);
                    $productApi = getFromGoogle($isbn);
                    if($productApi !== null){
                        if(isset($product['language']) && Language::where('slug' , $product['language'])->first() !== null ){
                            $productApi['language_id'] = Language::where('slug' , $product['language'])->first()->id;
                        }
                        if(isset($product['age'])){
                            $productApi['age_id'] = $age;
                        }
                        if(Product::where('isbn' , $productApi['isbn'])->first() == null){
                            // dd('hi');
                            if(Product::where('slug' , $productApi['slug'])->first() !== null ){
                                $productApi['slug'] = $productApi['slug'] . '-' .$productApi['isbn'];
                            }
                            $productApi['price'] = $product['price'];
                            // // dd(Product::where('slug' , 'Little-Spider\'s-Shapes')->first());
                            // $productApi['slug'] = $productApi['slug'] === 'Little-Spider\'s-Shapes' ? 'Little-Spider\'s-Shapes-2'  : $productApi['slug'];
                            // $productApi['isbn'] = $productApi['isbn'] === '9781789474886' ? '97817894748869'  : $productApi['isbn'];
                            $productRec = Product::create($productApi);
                            Price::create(['product_id' => $productRec->id , 'price' => $product['price']]);
                            $stock = ['product_id' => $productRec->id , 'qty' => 3];
                            Stock::create($stock);
                            if($category == 'kids'){
                                $categories = Category::where('slug' , 'kids')->orWhere('slug' , 'kids-fiction')->pluck('id');
                            } else if ($category == 'adults'){
                                $categories = Category::where('slug' , 'adults')->orWhere('slug' , 'adults-fiction')->pluck('id');
                            }
                            foreach($categories as $cat){
                                $rec = [
                                    'category_id' => $cat,
                                    'product_id' => $productRec->id,
                                ];
                                CategoryProduct::insert([$rec]);
                            }
                                
                        }
                    } else{
                        $fail = ProductFail::where('isbn' , $isbn)->first();
                        if($fail == null){
                            ProductFail::create(['isbn' => $isbn]);
                        }
                    }
                }

                
                
            }

        }
    }
}
