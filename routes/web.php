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
//Route::get('/blog/category/{slug?}','BlogController@category')->name('category');
//Route::get('/blog/article/{slug?}','BlogController@article')->name('article');
Route::get('/tag/{slug}', 'HomeController@tag')->name('tag.show');
Route::get('/about','HomeController@about');
Route::get('/contact','HomeController@contact');
Route::post('/mail', 'MailController@send_mail');


Route::group(['middleware'	=>	'auth'], function(){
    Route::post('/comment', 'CommentsController@store');
});

Route::group(['prefix'=>'admin','namespace'=>'admin','middleware'=>['admin']],function (){
    Route::get('/','DashboardController@dashboard')->name('admin.index');
    Route::resource('/tags','TagsController',['as'=>'admin']);
    Route::resource('/pages','PagesController',['as'=>'admin']);
    Route::resource('/category','CategoryController',['as'=>'admin']);
    Route::resource('/article','ArticleController',['as'=>'admin']);
    Route::group(['prefix'=>'user_managment','namespace'=>'UserManagment'],function() {
    Route::resource('/user', 'UserController', ['as' => 'admin.user_managment']);
        });
    Route::delete('/comments/{id}/destroy', 'CommentsController@destroy')->name('comments.destroy');
});

//Route::get('/', function () {
//    return view('welcome');
//});


Auth::routes();
Route::get('/{slug}', 'HomeController@category')->name('category.show');
Route::get('/id/{slug}','HomeController@show')->name('article.show');


