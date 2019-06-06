<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('shop1', function () {
	return view('shop.shop');
});

Route::get('cart', function () {
	return view('shop.cart');
});
Route::get('product', function () {
	return view('shop.product-page');
});
Route::get('/', ['uses' => 'Shop\HomeController@index' , 'as' => 'shop.home']);