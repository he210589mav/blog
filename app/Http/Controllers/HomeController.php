<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Pages;
use App\Tag;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $articles = Article::paginate(5);
        $popularArticle=Article::orderBy('viewed','desc')->take(3)->get();
        $recentArticle=Article::orderBy('created_at','desc')->take(4)->get();
        $categories=Category::all();
        return view('home',[
            'articles'=>$articles,
            'popularArticle'=>$popularArticle,
            'recentArticle'=>$recentArticle,
            'categories'=>$categories

        ]);
    }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
   // public function __construct()
   // {
   //     $this->middleware('auth');
   // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $article = Article::where('slug', $slug)->firstOrFail();
        $id=$article->categories()->pluck('slug')->implode(', ');
        return view('show', compact('id','article'));
    }
    public function tag($slug)
    {
        $tag = Tag::where('slug', $slug)->firstOrFail();

        $articles = $tag->articles()->paginate(5);

        return view('list', ['articles'  =>  $articles]);
    }

    public function category($slug)
    {
        $category = Category::where('slug', $slug)->firstOrFail();

        $articles = $category->articles()->paginate(5);

        return view('list', ['articles'  =>  $articles]);
    }
    public function about(){
        $pages=Pages::all();
        return view('about',compact('pages'));
    }
    public function contact(){
        $pages=Pages::all();
        return view('contact',compact('pages'));
    }
}
