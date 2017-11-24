<?php


Route::group(['middleware' => 'auth'], function() {
	Route::resource('quotes', 'QuoteController', ['except' => ['index', 'show']]);
	Route::post('quotes-comment/{id}', 'QuoteCommentController@store')->name('quotes-comment');
	Route::put('quotes-comment/{id}', 'QuoteCommentController@update')->name('quotes-comment-update');
	Route::get('quotes-comment/{id}/edit', 'QuoteCommentController@edit')->name('quotes-comment-edit');
	Route::delete('quotes-comment/{id}', 'QuoteCommentController@destroy')->name('quotes-comment-delete');
	Route::get('like/{type}/{model}', 'LikeController@like')->name('like');
	Route::get('unlike/{type}/{model}', 'LikeController@unlike')->name('unlike');
	Route::get('notifications', 'HomeController@get_notif')->name('notifications');
});


Route::get('/', function () { return view('welcome');});
Auth::routes();

Route::get('quotes-filter/{tag}', 'QuoteController@filter')->name('quotes-filter');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/profile/{id?}', 'HomeController@profile')->name('profile');
Route::get('quotes/random', 'QuoteController@random')->name('random');

Route::resource('quotes', 'QuoteController', ['only' => ['index', 'show']]);


