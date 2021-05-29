<?php

namespace App\Http\Controllers\admin;

use App\Cart;
use App\Http\Controllers\Controller;
use App\Order;
use App\QueryFilters\globals\ClosedFilter;
use App\QueryFilters\order\GatewayFilter;
use App\QueryFilters\order\StatusFilter;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class OrderController extends Controller
{
    public function get(Request $request)
    {
        $offset =   $request->show * ($request->page - 1);
        $pipeline = app(Pipeline::class)->send(Cart::query()->select([
            'id' ,
            'total' ,
            'status' ,
            'discount_value' ,
            'gateway' ,
        ])
        ->orderBy('created_at', 'DESC'))->through([
            GatewayFilter::class,
            StatusFilter::class,
            ClosedFilter::class,
        ])->thenReturn();
        return response()->json(['items' => $pipeline->skip($offset)->take($request->show)->get() , 'total' => $pipeline->count()]);
    }

    public function updateStatus($id , Request $request){
        $order = Cart::find($id);
        $order->status = $request->status;
        $order->save();
        return response()->json($order);

    }
    
}
