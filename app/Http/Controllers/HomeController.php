<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        //$articles = Article::paginate(2);

        return view('home');
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

}
