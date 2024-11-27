<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Http;


use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Ad;
use App\Models\Movie;
use App\Models\Link;
use App\Models\tupian;
use App\Models\Admin; // 如果你需要使用 Admin 模型
use App\Models\User; // 确保引入 User 模型
use App\Models\Video; // 确保引入 User 模型

use Illuminate\Support\Facades\App;

class HomeController extends Controller
{
    // public function homepage()
    // {
    //    return view('home');
    // }

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

    public function homepage()
    {
        //App::setLocale('en');
        $locale = session('locale'); // 获取 session 中的 locale 值
        App::setLocale($locale);

        
        $data = Video::orderBy('created_at', 'desc')->paginate(8);
        
        return view('home', compact('data'));
    }    

    /*
     * 视频播放页面
     */
    public function showVideo($id)
    {
        $onevideo = Video::find($id);

        if( empty($onevideo) ) {
            return '视频不存在';
        }

        return view('show', compact('onevideo') );
    }

    public function dashboard()
    {
        
        $data = Video::paginate(8); // 或者其他逻辑
        return view('dashboard', compact('data'));
    }

} 
   

    
