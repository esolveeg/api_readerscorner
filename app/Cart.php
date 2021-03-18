<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Cart extends Model
{
    protected $table = 'cart';
    protected $guarded = [];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }

    public function scopeCart($query)
    {
        return $query->where('closed_at' ,null);
    }


    public function scopeOrder($query)
    {
        return $query->where('closed_at' ,'!=' ,  null);
    }


    public static function get($userId , $scope)
    {
        if($scope == 'cart'){
            $cart = self::where('user_id' , $userId)->cart()->first();
            if($cart == null){
                return ['products' => []];
            }
            return self::getCartMeta($cart);

        }else{
            $orders = self::where('user_id' , $userId)->order()->get();
            foreach($orders as $order){
                $order = self::getCartMeta($order);
            }
            return $orders;
        }
        
        
    }

    private static function getCartMeta($cart)
    {
        $products = self::getCartProducts($cart->id);
        if(count($products) > 0){
            $cart->products = $products;
            $subtotal = Cart::subtotal($cart->id);
            $discountVal = 0;
            if($cart->discount_code != null){
                $coupon = cartCouponData($cart->discount_code , $subtotal);
                isset($coupon['percent']) ? $cart->discount_percent = $coupon['percent'] : '';
                $cart->discount_value = $coupon['value'];
            }

            $cart->subtotal = $subtotal;
            $cart->total = $subtotal - $discountVal + $cart->shipping;
            return $cart;
        } else{
            return ['products' => []];
        }
    }
    private static function getCartProducts($id){

        return DB::select(
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
                LEFT JOIN authors a 
                    ON a.id = p.author_id 
                WHERE cp.cart_id = ? " , [$id]);
    }

    public static function subtotal($id)
    {
       return DB::select("SELECT SUM(price * qty) subtotal FROM cart_product WHERE cart_id = ? " ,[ $id])[0]->subtotal;
    }

}
