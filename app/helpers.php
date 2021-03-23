<?php

use App\Author;
use App\City;
use App\Coupon;
use App\Product;
use App\ProductFail;
use App\Stock;
use App\StockHistory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

if (! function_exists('slugify')) {
    function slugify($title) {
        $slug =  str_replace(' ' , '-' , $title);
        $slug =  str_replace('?' , '' , $slug);
        return $slug;
    }
}
if (! function_exists('cartCouponData')) {
    function cartCouponData($code , $subtotal) {
        $coupon = Coupon::where('code' , $code)->first();
        if($coupon->type == 'fixed'){
            return ['value' => $coupon->value];
        } else {
            return ['percent' => $coupon->value , 'value' => $coupon->value * $subtotal / 100];
        }
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
if (! function_exists('getItemStock')) {
    function getItemStock($product , $branch) {
        $stock = DB::select("SELECT * FROM stockView  WHERE product_id = ? AND branch_id" , [$product , $branch]);
        return isset($stock[0]) ? $stock[0]->qty : 0;

    }
}

if (! function_exists('getItemStocks')) {
    function getItemStocks($product) {
      $stock =  DB::select("SELECT * FROM stockView  WHERE product_id = ?" , [$product]);
        return $stock;
    }
}
if (! function_exists('addItemStock')) {
    function addItemStock($rec) {
        $stock = DB::select("SELECT id , `in` , `out` FROM stock  WHERE product_id = ? AND branch_id = ?" , [$rec['product'] , $rec['branch']]);
        if(isset($stock[0])){
            if(isset($rec['in'])){
                $qty = $rec['in'] + $stock[0]->in;
                // dd($qty);
                DB::update('UPDATE stock s SET s.in = ?  WHERE id =? ' , [ $qty , $stock[0]->id]);
            } else {
                $qty = $rec['out'] + $stock[0]->out;
                // dd(DB::select("SELECT * FROM stock s WHERE id = ? " , [$stock[0]->id]));
                DB::update('UPDATE stock s SET s.out = ?  WHERE id =? ' , [ $qty , $stock[0]->id]);
            }
        } else {
            if(isset($rec['in'])){
                $rec['out'] = 0;
            } else {
                $rec['in'] = 0;
            }
            DB::insert("INSERT INTO stock (product_id,branch_id,`in` , `out`) VALUES (? , ? , ? , ?) " , [$rec['product'] , $rec['branch'] , $rec['in'] , $rec['out']]);
        }
    }
}
if (! function_exists('defineItemStock')) {
    function defineItemStock($rec) {
        $stock = DB::select("SELECT * FROM stockView  WHERE product_id = ? AND branch_id = ?" , [$rec['product'] , $rec['branch']]);
        if(isset($stock[0])){
            DB::update('UPDATE stock s SET s.in = ? , s.out = ?  WHERE id =? ' , [ $rec['in'] ,0, $stock[0]->id]);
        } else {
            DB::insert("INSERT INTO stock (product_id,branch_id,`in` , `out`) VALUES (? , ? , ? , ?) " , [$rec['product'] , $rec['branch'] , $rec['in'] , 0]);
        }
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
            $authorRec = DB::select('SELECT id FROM authors WHERE `name` = ? OR author_slug = ?' , [$author , slugify($author)]);
            // dd($authorRec[0]->id);
            // dd($authorRec);

            if(!isset($authorRec[0]->id)){
                $authorRec = Author::create(['name' => $author , 'author_slug' => slugify($author)]);
                $authorId = $authorRec->id;
            } else {
                $authorId = $authorRec[0]->id;
            }
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


