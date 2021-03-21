<?php

namespace App\Http\Controllers\admin;

use App\CategoryProduct;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdminProductRequest;
use App\Product;
use App\QueryFilters\product\AgeFilter;
use App\QueryFilters\product\AuthorFilter;
use App\QueryFilters\product\CategoryFilter;
use App\QueryFilters\product\ImageFilter;
use App\QueryFilters\product\KeyFilter;
use App\QueryFilters\product\LanguageFilter;
use App\QueryFilters\product\SearchFilter;
use App\QueryFilters\product\SubCategoryFilter;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class ProductController extends Controller
{
    
    public function get(Request $request)
    {
        $offset =   $request->show * ($request->page - 1);
        $pipeline = app(Pipeline::class)->send(Product::query()->select(['id' , 'isbn' , 'title' , 'price' , 'thumbnail'])
        ->orderBy('created_at', 'DESC'))->through([
            AuthorFilter::class,
            SearchFilter::class,
            CategoryFilter::class,
            KeyFilter::class,
            ImageFilter::class,
            AgeFilter::class,
            LanguageFilter::class,
            SubCategoryFilter::class,
        ])->thenReturn();
        return response()->json(['items' => $pipeline->skip($offset)->take($request->show)->get() , 'total' => $pipeline->count()]);
    }

    public function create(AdminProductRequest $request)
    {
        $product=  Product::create($request->except('categories'));
        if($request->categories){
            foreach($request->categories as $category){
                CategoryProduct::create([
                    "category_id" => $category,
                    "product_id" => $product->id
                ]);
            }
        }
        return $product;


    }

    public function find($isbn)
    {
        $product = Product::where('slug' , $isbn)->select([
            'id',
            'title',
            'slug',
            'thumbnail',
            'image',
            'isbn',
            'description',
            'author_id',
            'language_id',
            'age_id',
            'price',
            'old_price',
            'website',
        ])->first();
        dd($isbn);


    }
}
