<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Ad;
use App\Models\Movie;
use App\Models\Link;
use App\Models\tupian;
use App\Models\Admin; // 如果你需要使用 Admin 模型
use App\Models\User; // 确保引入 User 模型


class HomeController extends Controller
{
    public function homepage()
    {
       return view('home');
    }

    /**
     * 查看全部友情链接
     */
    public function alllinks() {
        //$allLinks = Link::all();

        $allLinks = Link::orderBy('sort', 'desc')->get();

        //dd($allLinks);

        return view('link', compact('allLinks'));
    }
    /**
     * 查看全部视频
    */
    public function allmovies(){
        $allmovies = Movie::all();
        return view('movie', compact('allmovies'));

    }
    /**
     * tupians链接
    */
    public function alltupians(){
        $alltupians =tupian::orderBy('id', 'asc')->get(); // 按照 id 升序排列
        return view('tupian',compact('alltupians'));
    }
    /**
     * admin数据
    */
    public function admins()
    {
        $admins =Admin::all();
        return view('admin',compact('admins'));
    }
}