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
Route::get('/', 'HomeController@index');
Route::get('/article/{slug}','HomeController@show')->name('article.show');
Route::get('/blog/category/{slug?}','BlogController@category')->name('category');
Route::get('/blog/article/{slug?}','BlogController@article')->name('article');
Route::get('/tag/{slug}', 'HomeController@tag')->name('tag.show');
Route::get('/category/{slug}', 'HomeController@category')->name('category.show');

Route::group(['prefix'=>'admin','namespace'=>'admin','middleware'=>['auth']],function (){
    Route::get('/','DashboardController@dashboard')->name('admin.index');
    Route::resource('/tags','TagsController',['as'=>'admin']);
    Route::resource('/category','CategoryController',['as'=>'admin']);
    Route::resource('/article','ArticleController',['as'=>'admin']);
    Route::group(['prefix'=>'user_managment','namespace'=>'UserManagment'],function() {
        Route::resource('/user', 'UserController', ['as' => 'admin.user_managment']);
    });
});

//Route::get('/', function () {
//    return view('welcome');
//});


Auth::routes();


