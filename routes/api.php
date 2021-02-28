<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('cors:api')->group(function (){
	Route::post('/seed','ProductSeederController@seedAll');

	Route::prefix('city')->group(function() {
		Route::get('/','CityController@get');
	});

	Route::prefix('cart')->group(function () {
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
});

