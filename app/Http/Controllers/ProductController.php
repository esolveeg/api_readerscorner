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

        $pipeline = app(Pipeline::class)->send(Product::query()->leftJoin('authors', 'author_id', '=', 'authors.id')
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
}
