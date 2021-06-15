<?php

namespace App\Http\Controllers;

use App\Author;
use App\Category;
use App\Http\Requests\ListProductRequest;
use App\Language;
use App\Product;
use App\QueryFilters\product\AgeFilter;
use App\QueryFilters\product\AuthorFilter;
use App\QueryFilters\product\CategoryFilter;
use App\QueryFilters\product\KeyFilter;
use App\QueryFilters\product\LanguageFilter;
use App\QueryFilters\product\SearchFilter;
use App\QueryFilters\product\SubCategoryFilter;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function find($slug)
    {
        $product = Product::where('slug' , $slug)->first();
        $author = DB::select("SELECT a.name , a.author_slug FROM products p  JOIN authors a ON p.author_id = a.id WHERE p.id = ? ORDER BY a.order_by ", [$product->id ]);
        $categories = DB::select("SELECT c.title , c.slug FROM category_product cp  JOIN categories c ON cp.category_id = c.id WHERE cp.product_id = ? ORDER BY c.id ", [$product->id ]);
        $product->author = isset($author[0]) ? $author[0] : null;
        $product->categories = $categories;
        // dd($categories);
        return $product;

    }
    
    public function list(ListProductRequest $request)
    {
        // dd((int)$request->byWeight);

        $pipeline = app(Pipeline::class)->send(Product::query()->where('website' , 1)->leftJoin('authors', 'author_id', '=', 'authors.id')
        ->orderBy('authors.name', 'ASC'))->through([
            AuthorFilter::class,
            SearchFilter::class,
            // SortFilter::class,
            // SaleFilter::class,
            CategoryFilter::class,
            KeyFilter::class,
            AgeFilter::class,
            // SortFilter::class,
            LanguageFilter::class,
            SubCategoryFilter::class,
        ])->thenReturn();
        // dd($pipeline->get());
        return $pipeline->paginate(12); 
    }

    public function categories($parent =  null)
    {
        if($parent != null){
            $cat = Category::where('slug' , $parent)->first();
            if($cat == null) {
                return response()->json([]);
            }
            $categories = Category::where('parent_id' , $cat->id);
        } else {
            $categories = Category::main();
        }
        return response()->json($categories->get());
    }
    
    public function languages($parent =  null)
    {
        $languages = Language::all();
        return response()->json($languages);
    }
    public function authors()
    {
        $authors = Author::top();
        return response()->json($authors->get());
    }
    public function search(Request $request)
    {
        // dd((int)$request->byWeight);

        $pipeline = app(Pipeline::class)->send(Product::query())->through([
            Search::class,
            GroupCode::class,

        ])->thenReturn();
        return $pipeline->limit(10)->get(); 
    }

    private function insertProudct($request , $document){
        // check if product type is define to apply create product function

        //validate product request
        

    }
    public function create(Request $request){
        $rules = [
            "title" => "required|max:255",
            "slug" => "required|max:255|unique:products",
            "thumbnail" => "nullable",
            "image" => "nullable",
            "isbn" => "required|max:255|unique:products",
            "description" => "nullable|max:255",
            "author_id" => "nullable|numeric|max:255",
            "language_id" => "nullable|numeric|max:255",
            "age_id" => "nullable|max:255",
            "price" => "required|between:0,9999.99",
            "old_price" => "nullable",
            "website" => "nullable",
        ];

        
        $validation = Validator::make($request->all(),$rules);
    
        if($validation->fails()){
            return response()->json($validation->errors());
        } 
        $product = [];
        $product = Product::create($product);
        return response()->json($product);

    }
}
