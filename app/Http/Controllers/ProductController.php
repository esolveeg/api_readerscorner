<?php

namespace App\Http\Controllers;

use App\Author;
use App\Category;
use App\Http\Requests\ListProductRequest;
use App\Language;
use App\Product;
use App\QueryFilters\AgeFilter;
use App\QueryFilters\AuthorFilter;
use App\QueryFilters\CategoryFilter;
use App\QueryFilters\KeyFilter;
use App\QueryFilters\LanguageFilter;
use App\QueryFilters\SearchFilter;
use App\QueryFilters\SubCategoryFilter;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class ProductController extends Controller
{
    public function find($slug)
    {
        return Product::where('slug' , $slug)->with('price')->first();
    }
    public function list(ListProductRequest $request)
    {
        // dd((int)$request->byWeight);

        $pipeline = app(Pipeline::class)->send(Product::query()->with('price')->join('authors', 'author_id', '=', 'authors.id')
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
