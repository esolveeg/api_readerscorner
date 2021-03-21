<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('cors:api')->group(function (){
	Route::post('/seed','ProductSeederController@seedAll');
	Route::post('/seed-prices','GlobalController@seedPrices');
	Route::post('/delete-cart','GlobalController@deleteCart');
	Route::post('/seed-categories','GlobalController@seedCategories');
	Route::get('/home-products','GlobalController@homeProducts');
	
	Route::prefix('city')->group(function() {
		Route::get('/','CityController@get');
	});

	Route::prefix('cart')->middleware('auth:api')->group(function () {
		Route::post('/get','CartController@get');
		// Route::post('/','CartController@create');
		Route::post('/','CartController@create');
		Route::post('/coupon','CartController@applyCoupon');
		Route::post('/shipping','CartController@applyShipping');
		Route::post('/delete','CartController@delete');
		Route::put('/{isbn}','CartController@update');
			// Route::get('/','ProductController@list');
		// Route::get('/categories/{parent?}','ProductController@categories');
		// Route::get('/authors','ProductController@authors');
		// Route::get('/search','ProductController@search');
	});

	Route::prefix('product')->group(function () {
		// Route::post('/','ProductController@create');
		// Route::put('/{id}','ProductController@update');
		// Route::delete('/{id}','ProductController@delete');
		Route::get('/find/{slug}','ProductController@find');
		Route::get('/','ProductController@list');
		Route::get('/categories/{parent?}','ProductController@categories');
		Route::get('/authors','ProductController@authors');
		Route::get('/languages','ProductController@languages');
		Route::get('/ages','GlobalController@ages');
		Route::get('/search','ProductController@search');
	});
	Route::middleware('guest:api')->group(function () {
		Route::post('/login','AuthController@login');
		Route::post('/register','AuthController@register');
	});
	Route::middleware('auth:api')->group(function () {
		Route::post('/checkout','CheckoutController@checkout');
		Route::post('/checkout/gateway','CheckoutController@applyGatewaty');
		Route::delete('/delete/{table}/{id}','GlobalController@delete');

		Route::prefix('user')->group(function () {
			Route::prefix('/address')->group(function () {
				// Route::post('/','UserController@attachAddress');
				Route::post('/','UserController@getAddresses');
				Route::delete('/{id}','UserController@deleteAddress');
				Route::put('/{id}','UserController@updateAddress');
				Route::get('/{id}','UserController@findAddress');
			});
			Route::get('/orders','UserController@getOrders');
			Route::put('/','UserController@update');
			Route::get('/','UserController@find');
			Route::post('/logout','UserController@logout');
		});
	});
	Route::get('/login','admin/AuthController@get');

	Route::prefix('admin')->namespace('admin')->group(function () {
		Route::post('/login','AuthController@login');
		Route::middleware('auth:api')->group(function () {
			Route::prefix('orders')->group(function () {
				Route::get('/','OrderController@get');
				Route::put('/update-status/{id}','OrderController@updateStatus');
			});
			Route::prefix('user')->group(function () {
				Route::get('/','UserController@me');
				Route::any('/logout','UserController@logout');

			});
			Route::prefix('products')->group(function () {
				Route::post('/','ProductController@create');
				Route::get('/','ProductController@get');
				Route::get('/find/{slug}','ProductController@find');
			});
			Route::prefix('inventories')->group(function () {
				Route::get('/','InventoryController@get');
				Route::get('/{id}','InventoryController@find');
				Route::get('/items/get','InventoryController@findItems');
				Route::post('/','InventoryController@create');
				Route::put('/qty/{id}','InventoryController@updateQty');
				Route::put('/close/{id}','InventoryController@close');
				Route::post('/add','InventoryController@insertItem');
			});
			Route::get('/languages','GlobalController@getLanguages');
			Route::post('/insert/products','GlobalController@insertProucts');
			Route::delete('/delete/products','GlobalController@deleteProucts');
			
			Route::get('/categories','GlobalController@getCategories');
			Route::get('/ages','GlobalController@getAges');
			Route::get('/branches','GlobalController@getBranhces');
			Route::get('/product/{isbn}','GlobalController@findItem');
			Route::delete('/delete/{table}/{id}','GlobalController@delete');
		});

	});	

});

