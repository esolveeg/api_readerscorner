<?php

namespace App\Http\Controllers;

use App\Address;
use App\Cart;
use App\CartProduct;
use App\City;
use App\Coupon;
use App\CouponUser;
use App\Http\Requests\CartRequest;
use App\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    
    public function get(Request $request)
    {
        $user = $request->user('api');
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->orWhere('ip' , $request->ip)->first();
        if($cart == null){
            return response()->json(['products' => []]);
        }
        $products = DB::select(
                    "SELECT 
                        p.title ,
                        p.image ,
                        p.id ,
                        p.isbn ,
                        p.thumbnail ,
                        p.slug ,
                        cp.price ,
                        cp.qty ,
                        cp.old_price , 
                        a.name author ,
                        a.author_slug
                        FROM cart_product cp 
                        JOIN products p 
                            ON cp.product_id = p.id
                        JOIN authors a 
                            ON a.id = p.author_id 
                        WHERE cp.cart_id = ? " , [$cart->id]);
        
        if(count($products) > 0){
            $cart->products = $products;
            $subtotal = DB::select("SELECT SUM(price * qty) subtotal FROM cart_product WHERE cart_id = ? " ,[ $cart->id])[0]->subtotal;
            $discountVal = 0;
            if($cart->discount_code != null){
                $coupon = Coupon::where('code' , $cart->discount_code)->first();
                // dd($coupon->type);
                if($coupon->type == 'fixed'){
                    $discountVal = $coupon->value;
                } else {
                    $cart->percentOff = $coupon->value;
                    $discountVal =  $coupon->value * $subtotal / 100;
                }
                $cart->discounVal = $discountVal;
            }

            $cart->subtotal = $subtotal;
            $cart->total = $subtotal - $discountVal;
            return response()->json($cart);
        } else{
            return response()->json('no items');
        }   
    }
    public function applyShipping(Request $request)
    {
        if($request->address_id){
            $shipping = Address::find($request->address_id)->city->shipping_fee;
        }else {
            $shipping = City::find($request->city_id)->shipping_fee;    
        }
        $user = $request->user('api');
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->orWhere('ip' , $request->ip)->first();
        $cart->shipping = $shipping;
        $cart->save();
        return response()->json('Shipping added successfully');

    }
    public function applyCoupon(Request $request){
        $id = isset($request->user('api')->id) ? isset($request->user('api')->id) : null;
        
        $coupon = Coupon::where('code' , $request->code)->first();
        if($coupon == null){
            return response()->json('this coupon dosen\'t exists' , 400);
        }
        $used = CouponUser::where('coupon_id' , $coupon->id)->where('user_id' , $id)->first() !== null;
        if($used){
            return response()->json('you used this coupon previousily' , 400);
        }
        $expiresAt = Carbon::createFromFormat('Y-d-m', $coupon->expires_at);
        $expired = $expiresAt->lt(Carbon::now()->format('Y-d-m'));
        // dd($expired);
        if($expired == true){
            return response()->json('this coupon is expired' , 400);
        }
        $cart = Cart::where('user_id' , $id)->orWhere('ip' , $request->ip)->first();
        $cart->discount_code = $coupon->code;
        $cart->save();
            return response()->json('applied successfully');
        
    }
    public function create(Request $request)
    {
        $user = $request->user('api');
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->orWhere('ip' , $request->ip)->first();
        if($cart == null){
            $cart = $this->init($request->ip , $id);
        }
        $this->setProducts($cart->id , $request->product , $request->qty);
        return response()->json(['success' => 'true' , 'message' => 'added to cart successfully']);
    }
    private function init($ip  , $user = null){
        $rec = ['ip' => $ip]; 
        if($user != null){
            $rec['user_id'] = $user;
        }
        $cart = Cart::create($rec);
        return $cart;
    }
    private function setProducts($cart  , $product , $qty = 1 ){
        // dd($product);
        $pr = Product::where('isbn' , $product)->first();
        $rec = CartProduct::where('product_id' , $pr->id)->where('cart_id' , $cart)->first();
        if($rec != null){
            $rec->qty = $rec->qty + 1;
            $rec->save();
            return ;
        }
        $rec = [
            "cart_id" => $cart,
            "product_id" => $pr->id,
            "price" => $pr->price->price,
            "old_price" => $pr->price->old_price,
            "qty" => $qty,
        ];
        CartProduct::create($rec);
        return $product;
    }
    public function delete(Request $request)
    {
        $user = $request->user('api');
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->orWhere('ip' , $request->ip)->first();
        // dd($request->all());
        $pr = Product::where('isbn' , $request->product)->first();
        if($cart == null){
            return response()->json(['success' => 'false' , 'message' => 'no items on your cart']);
        }
        DB::delete('DELETE FROM cart_product WHERE `cart_id` = ? AND `product_id`  = ?', 
            [
                $cart->id,
                $pr->id,
            ]
        );
        return response()->json(['success' => 'true' , 'message' => 'deleted from cart successfully']);

    }
    public function update(Request $request , $isbn)
    {
        $user = $request->user('api');
        $userId = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $userId)->orWhere('ip' , $request->ip)->first();
        $pr = Product::where('isbn' , $isbn)->first();
        // dd($cart);
        // $cartProduct = CartProduct::where('cart_id' , $cart->id)->where('product_id' , $id)->get(); 
        // dd($cartProduct);
        DB::update('UPDATE cart_product SET qty = ? WHERE cart_id = ? AND product_id = ?', 
            [
                $request->qty,
                $cart->id,
                $pr->id,
            ]);
        return response()->json(['success' => 'true' , 'message' => 'quantity updated successfully']);
    }
}
