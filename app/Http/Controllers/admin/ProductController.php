<?php

namespace App\Http\Controllers\admin;

use App\Age;
use App\Author;
use App\Branch;
use App\Category;
use App\CategoryProduct;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdminProductRequest;
use App\Language;
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
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    
    public function get(Request $request)
    {
        //check if page and show dosn't come with the request to set them to initial vals
        $request->show = !isset($request->show) ? 10 : intval($request->show);
        $request->page = !isset($request->page)  ? 1 : intval($request->page);
        $offset =   $request->show * ($request->page - 1);
        // dd($offset);
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
        $count = $pipeline->count();
        $items = $pipeline->skip($offset)->take($request->show)->get();
        // dd($count); 
        return response()->json(['items' => $items , 'total' => $count]);
    }

    public function create(AdminProductRequest $request)
    {
        $request->merge([
            'author_id' => $this->createAuthor($request->author_id)
        ]);
        
        
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
    public function findByIsbn($isbn)
    {
        $product = Product::where('isbn' , $isbn)->first();
        // dd($product);
        $stock = getItemStocks($product->id);
        return response()->json($stock);

    }
    public function findById($id)
    {
        // dd('asd');
        $product = Product::find($id);
        $categories = CategoryProduct::where('product_id' , $id)->pluck('category_id');
        $product->categories = $categories;
        //load stock
        $product->stock = $this->loadStock($id);
        //load relations
        // dd($product);
        // dd($product->language_id);
        $product->language = Language::find($product->language_id)!== null ? Language::find($product->language_id)->title : null;
        $product->age  = isset(Age::find($product->age_id)->title) ? Age::find($product->age_id)->title : null;
        $product->author  = isset(Author::find($product->author_id)->name) ? Author::find($product->author_id)->name : null;
        return response()->json($product);
    }

    private function loadStock($id){
        // dd($id);
        $branches = Branch::select(['id' , 'name'])->get();
        $stocks = [];
        foreach($branches as $branch){
            $stock = ['branch' => $branch->name ,'qty' => getItemStock($id , $branch->id)];
            array_push($stocks , $stock);
        }
        return $stocks;
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


    }
    public function update(AdminProductRequest $request , $id)
    {
        //get the product with the passed id
        $product = Product::find($id);
        //check if prioduct is not found to return error
        if($product == null){
            return response()->json('no product with this id' , 400);
        }
        //check if author passed as string to create new author and attach author id to the request
        $request->merge([
            'author_id' => $this->createAuthor($request->author_id)
        ]);
        //uodate the product
        $product->update($request->except('categories'));
        //delete all cateogires
        DB::delete("DELETE FROM category_product WHERE product_id = ?" ,[$id]);
        // insert the new categories
        if($request->categories){
            foreach($request->categories as $category){
                CategoryProduct::create([
                    "category_id" => $category,
                    "product_id" => $id
                ]);
            }
        }
        return $product;
    }

    private function createAuthor($author){
        if(is_string($author)){
            // dd($author);
            $slug = str_replace(' ' , '-' , $author);
            $author = Author::where('author_slug' , $slug)->first();
            if($author === null){
                $author = ['name' => $author , 'author_slug' => $slug];
                $author = Author::create($author);
            }
            return $author->id;
            
        }
    }

}
