<?php

namespace App\Http\Controllers;

use App\Address;
use App\Cart;
use App\CartProduct;
use App\City;
use App\Coupon;
use App\CouponUser;
use App\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    
    public function get(Request $request)
    {
        $userId = $request->user()->id;
        $cart = Cart::get($userId , 'cart');
        return response()->json($cart);
    }
    public function applyShipping(Request $request)
    {
        if($request->address_id){
            $shipping = Address::find($request->address_id)->city->shipping_fee;
        }else {
            $shipping = City::find($request->city_id)->shipping_fee;    
        }
        $user = $request->user();
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->cart()->first();
        $cart->shipping = $shipping;
        $cart->address_id = $request->address_id;
        $cart->save();
        return response()->json('Shipping added successfully');
    }
    public function applyCoupon(Request $request){
        $id = $request->user()->id;
        
        $coupon = Coupon::where('code' , $request->code)->first();
        if($coupon == null){
            return response()->json('this coupon dosen\'t exists' , 400);
        }
        $used = Cart::where('closed_at' , '!=' , null)->where('user_id' , $id)->where('discount_code' , $request->code)->first() !== null;
        if($used){
            return response()->json('you used this coupon previousily' , 400);
        }
        $expiresAt = Carbon::createFromFormat('Y-d-m', $coupon->expires_at);
        $expired = $expiresAt->lt(Carbon::now()->format('Y-d-m'));
        // dd($expired);
        if($expired == true){
            return response()->json('this coupon is expired' , 400);
        }
        $cart = Cart::where('user_id' , $id)->cart()->first();
        $cart->discount_code = $coupon->code;
        $cart->save();
        return response()->json('applied successfully');
        
    }
    public function create(Request $request)
    {
        $userId = $request->user()->id;
        $cart = Cart::where('user_id' , $userId)->cart()->first();
        if($cart == null){
            $cart =  Cart::create(['user_id' => $userId]);
        }
        $this->setProducts($cart->id , $request->product , $request->qty);
        return response()->json(['success' => 'true' , 'message' => 'added to cart successfully']);
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
            "price" => $pr->price,
            "old_price" => $pr->old_price,
            "qty" => $qty,
        ];
        CartProduct::create($rec);
        return $product;
    }
    public function delete(Request $request)
    {
        $user = $request->user();
        $id = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $id)->cart()->first();
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
        $user = $request->user();
        $userId = isset($user->id) ? $user->id : '';
        $cart = Cart::where('user_id' , $userId)->cart()->first();
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
