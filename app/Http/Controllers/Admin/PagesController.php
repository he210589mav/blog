<?php

namespace App\Http\Controllers\Admin;

use App\Pages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PagesController extends Controller
{
    public function index()
    {
        $pages = Pages::all();
        return view('admin.pages.index', ['pages' => $pages]);
    }
        public function create()
    {
        return view('admin.pages.create');
    }


    public function store(Request $request)
    {

        Pages::create($request->all());
        return redirect()->route('admin.pages.index');
    }

    public function edit($id)
    {
        $pages=Pages::find($id);
        return view('admin.pages.edit',['pages'=>$pages]);
    }

    public function update(Request $request, $id)
    {

        $pages=Pages::find($id);
        $pages->update($request->all());

        return redirect()->route('admin.pages.index');
    }

}

