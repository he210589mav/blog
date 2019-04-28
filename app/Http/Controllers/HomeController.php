<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $articles = Article::paginate(5);

        return view('home',['articles'=>$articles]);
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

        return view('show', compact('article'));
    }
}
