<?php

use App\Author;
use App\City;
use App\Product;
use App\ProductFail;
use Illuminate\Support\Facades\Http;

if (! function_exists('slugify')) {
    function slugify($title) {
        return str_replace(' ' , '-' , $title);
    }
}
if (! function_exists('extractTitleFromAddress')) {
    function extractTitleFromAddress($address , $shortner = false) {
        $addr = $address['building'] . ' ' . $address['street'] . ' , ' . $address['state']  ;
        if($shortner == 'shortner'){
            return $addr;
        }
        if(isset($address['apartment'])){
            $addr  = $addr . ' Aparment : '. $address['apartment'];
        }
        if(isset($address['floor'])){
            $addr  = $addr . ' Floor : '. $address['floor'];
        }
        $addr  = $addr . ' , ' . City::find($address['city_id'])['name'] .  ' , ' . 'Egypt';

        return $addr;
    }
}

if (! function_exists('getFromGoogle')) {
    function getFromGoogle($isbn) {
        $product = Product::where('isbn' , $isbn)->first();
        if($product !== null){
            return ;
        }
        $product = ProductFail::where('isbn' , $isbn)->first();
        if($product !== null){
            return ;
        }
        $response =  Http::get('https://www.googleapis.com/books/v1/volumes?q=isbn:'.$isbn);
        $response = json_decode($response->body());
        if(!isset($response->items[0])){
            return ;
        }
        $volumeInfo = $response->items[0]->volumeInfo;
        $title =  trim($volumeInfo->title);
        $slug = slugify($title);
        $thumbnail = isset($volumeInfo->imageLinks->smallThumbnail) ?  trim($volumeInfo->imageLinks->smallThumbnail) : '';
        $image = isset($volumeInfo->imageLinks->thumbnail) ? trim($volumeInfo->imageLinks->thumbnail) : '';
        $description = isset($volumeInfo->description) ?  trim($volumeInfo->description) : ''; 
        if(isset($volumeInfo->authors[0])){
            $author = $volumeInfo->authors[0];
            $authorRec = Author::where('name' , $author)->first();
            if($authorRec == null){
                $authorRec = Author::create(['name' => $author , 'author_slug' => slugify($author)]);
            }
            $authorId = $authorRec->id;
        }
        $authorId = isset($authorId) ? $authorId : null;
        $product = [
            'title' => $title,
            'slug' => $slug,
            'thumbnail' => $thumbnail,
            'image' => $image,
            'isbn' => $isbn,
            'description' => $description,
            'author_id' => $authorId,
        ];

        return $product;
    }
}


