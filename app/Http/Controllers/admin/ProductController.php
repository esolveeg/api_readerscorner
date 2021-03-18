<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
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
}
