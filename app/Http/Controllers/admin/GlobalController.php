<?php

namespace App\Http\Controllers\admin;

use App\Age;
use App\Branch;
use App\Category;
use App\Http\Controllers\Controller;
use App\Language;
use App\Product;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class GlobalController extends Controller
{
    public function getBranhces(Request $request)
    {
        if($request->user()->branch_id !== null){
            $branches = Branch::where('id' , $request->user()->branch_id)->get();
        }
        $branches = Branch::cacheFor(60 * 60 * 24)->select(['id'  , 'name'])->get();
        
        return response()->json($branches);
    }

    public function getLanguages()
    {
        $languages = Language::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->get();
        return response()->json($languages);
    }

    public function getAges()
    {
        $ages = Age::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->get();
        return response()->json($ages);
    }

    public function getCategories()
    {
        $categories = Category::cacheFor(60 * 60 * 24)->select(['id'  , 'title'])->get();
        return response()->json($categories);
    }

    public function findItem($isbn){
        $product = Product::cacheFor(60 * 60 * 24)->where('isbn' , $isbn)->select(['id'  , 'isbn' , 'title' , 'price'])->first();
        if($product == null){
            return response()->json('product not found' , 400);
        }
        return $product;
    }

    public function delete($table , $id)
    {
        $record = DB::table($table)->where('id' , $id);
        if(count($record->get()) == 0){
            return response()->json('Sorry !this record can\'t be found');
        }
        $record->delete();
        return response()->json('Deleted Sucessfully');

    }
}
