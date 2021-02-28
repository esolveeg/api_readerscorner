<?php

namespace App\Http\Controllers;

use App\Age;
use App\Category;
use App\CategoryProduct;
use App\data\ProductZeroThree;
use App\data\Adult;
use App\data\French;
use App\data\Germany;
use App\data\Nonfiction;
use App\data\ProductFiveSeven;
use App\data\ProductNineEleven;
use App\data\ProductSevenNine;
use App\data\ProductThreeFive;
use App\Language;
use App\Price;
use App\Product;
use App\ProductFail;
use App\Stock;
use Illuminate\Http\Request;

use function PHPUnit\Framework\isNull;

class ProductSeederController extends Controller
{
    public function seedAll(){
        $zeroThree = new ProductZeroThree;
        $data = $zeroThree->all();
        $filters = $zeroThree->filters();
        $this->insert($data,$filters);
        $Adult = new Adult;
        $French = new French;
        $Germany = new Germany;
        $Nonfiction = new Nonfiction;
        $ProductFiveSeven = new ProductFiveSeven;
        $ProductNineEleven = new ProductNineEleven;
        $ProductSevenNine = new ProductSevenNine;
        $ProductThreeFive = new ProductThreeFive;
        $files = [
            $Adult,
            $French,
            $Germany,
            $Nonfiction,
            $ProductFiveSeven,
            $ProductNineEleven,
            $ProductSevenNine,
            $ProductThreeFive,
        ];
        foreach($files as $file){
            $data = $file->all();
            $filters = $file->filters();
            $this->insert($data,$filters);
        }

        return response()->json('seeded successfully');
    }
    private function insert($collection ,$filters = [])
    {
        foreach($collection as $product){
            $isbn = isset($product['isbn']) ? $product['isbn'] : null;
            if(isset($product['isbn'])){
                $isbn = $product['isbn'];
                $currProduct = Product::where('isbn' , $isbn)->first();
                if($currProduct !== null){
                    if($currProduct->price == null){
                        Price::create(['product_id' => $currProduct->id , 'price' => $product['price']]);
                    }
                   
                } else {
                    $productApi = getFromGoogle($isbn);
                    if($productApi !== null){
                        $productApi['language_id'] = $filters['language'];
                        $productApi['age_id'] = $filters['age'];
                        if(Product::where('slug' , $productApi['slug'])->first() !== null ){
                            $productApi['slug'] = $productApi['slug'] . '-' .$productApi['isbn'];
                        }
                        $productRec = Product::create($productApi);
                        Price::create(['product_id' => $productRec->id , 'price' => $product['price']]);
                        $stock = ['product_id' => $productRec->id , 'qty' => 3];
                        Stock::create($stock);
                        if($filters['categories'] !== null){
                            foreach($filters['categories'] as $cat){
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
