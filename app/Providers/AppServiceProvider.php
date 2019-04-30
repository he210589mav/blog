<?php

namespace App\Providers;

use App\Article;
use App\Category;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('sidebar', function($view){
          $view->with('popularArticle', Article::orderBy('viewed','desc')->take(3)->get());
          $view->with('recentArticle', Article::orderBy('created_at','desc')->take(4)->get());
          $view->with('categories',Category::all());
    });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
