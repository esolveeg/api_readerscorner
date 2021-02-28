<?php

use App\Author;
use App\Category;
use App\CategoryProduct;
use App\Price;
use App\Product;
use App\ProductFail;
use GuzzleHttp\Psr7\Request;
use Illuminate\Support\Facades\Route;

Route::get('/products', function () {
    return Author::select([
      'name',
      'author_slug',
      'order_by',
      'top'
    ])->get();
});


Route::post('/address', function (Request $request) {
  return $request;
});
