<?php

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Auth::routes(['verify' => true]);

//-------------------------- Front-End Routes ---------------------------
Route::get('/', 'MasterController@index');
Route::get('/blog/{id?}', 'MasterController@blog');// Afficher tout les postes
Route::get('/blog/{slug}', 'MasterController@singlepost')->middleware('verified');;// Afficher detail d'un poste
Route::post('/addcontact', 'MasterController@addcontact'); // Enregistrer contact
Route::get('/gallery/{type?}', 'MasterController@gallery');
Route::post('/reserver', 'MasterController@reserver'); // Enregistrer reservation
Route::get('/menu/{type?}', 'MasterController@menu')->middleware('verified'); // Afficher le menu

Route::get('/reservation', function () {
    return view('partials.reservation');
})->middleware('verified');

Route::get('/contact', function () {
    return view('partials.contact');
});

//--------------------------Shopping cart Route---------------------------

Route::get('/add-to-cart/{id}', [
    'uses' => 'ProductController@getaddToCart',
    'as' => 'product.addToCart'
]);

Route::get('/shoppingcart', [
    'uses' => 'ProductController@getCart',
    'as' => 'product.shoppingCart'
])->middleware('verified');

Route::get('/remove/{id}', [
    'uses' => 'ProductController@removeItem',
    'as' => 'product.remove'
])->middleware('verified');

Route::get('/orders', [
    'uses' => 'ProductController@getUserOrders',
    'as' => 'profile.orders'
])->middleware('verified');

Route::post('/store', [
    'uses' => 'ProductController@orderStore',
    'as' => 'order.store'
])->middleware('verified');

//--------------------------Shopping cart Route---------------------------