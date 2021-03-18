<?php

namespace App\Http\Controllers;

use App\Address;
use App\Cart;
use App\City;
use App\Http\Requests\AddressRequest;
use App\Http\Requests\UserRequest;
use App\Order;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function find(Request $request)
    {
        $user = User::find($request->user()->id);
        return response()->json($user);
    }

    public function getOrders(Request $request)
    {
        $userId = $request->user()->id;
        $orders = Cart::get($userId , 'orders');
        return response()->json($orders);
    }


    public function getAddresses(Request $request){
       
        if($request->type == 'insert'){
            // dd('hi');
            if($request->title == null){
                $request->title = extractTitleFromAddress($request->all());
            }
            $request['user_id'] = $request->user()->id;
            $address = Address::Create([
                "building"  =>  $request->building,
                "street"    =>  $request->street,
                "state"     =>  $request->state,
                "user_id"     =>  $request->user()->id,
                "title"     =>  $request->title,
                "floor"     =>  $request->floor,
                "phone"     =>  $request->phone,
                "apartment" =>  $request->apartment,
                "city_id"   =>  $request->city_id,
            ]);
            return response()->json($address);
        } else {
            $addresses = User::find($request->user()->id)->addresses;
            // dd(Address::where('user_id' , 1)->get());
            $addresses = $addresses->map(function($address){
                $address->city = City::find($address->city_id)->name;
                $address->title = extractTitleFromAddress($address , 'shortner');
                return $address;
            });
            // dd($addresses);

            return response()->json($addresses);

        }
        
    }
    public function attachAddress(AddressRequest $request)
    {
        // $address =new Address($request->all());
        if($request->title == null){
            $request['title'] = extractTitleFromAddress($request->all());
        }
        $request['user_id'] = $request->user()->id;
        $address = Address::Create($request->all());
        return response()->json($address);
    }

    public function deleteAddress($id , Request $request)
    {
        $address = Address::find($id);
        if($address->user_id != $request->user()->id){
            return response()->json('sorry this address dosn\'t belong to this user ',400);
        }
        $address->delete();
        return response()->json('Address deleted successfully');
    }
    public function updateAddress($id , AddressRequest $request)
    {
        $address = Address::find($id);
        if($address->user_id != $request->user()->id){
            return response()->json('sorry this address dosn\'t belong to this user ',400);
        }
        $address->update($request->all());
        return response()->json('Address updated successfully');
    }
    public function update(UserRequest $request)
    {
        $request->user()->update($request->all());
        return response()->json('Address updated successfully');
    }
    public function findAddress($id , Request $request)
    {
        $address = Address::find($id);
        if(!$address){
            return response()->json('sorry this address dosn\'t exists',400);
        }
        if($address->user_id != $request->user()->id){
            return response()->json('sorry this address dosn\'t belong to this user ',400);
        }
        return response()->json($address);
    }
    public function logout(Request $request)
    {
        DB::table('oauth_access_tokens')
        ->where('user_id', $request->user()->id)
        ->update([
            'revoked' => true
        ]);
        return response()->json('logged out sucessfully');
    }
}
