<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <!-- 引入 Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
     <!-- 引入 Bootstrap 5 -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/home.css" rel="stylesheet" type="text/css">
</head>
<body class="bg-gray-100">

<!-- 顶部栏 -->

<!-- 顶部栏 -->
<div class="bg-dark text-light py-2">
    <div class="container d-flex justify-content-between">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="languageDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                简体中文
            </button>
            <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                <li><a class="dropdown-item" href="#">简体中文</a></li>
                <li><a class="dropdown-item" href="#">English</a></li>
            </ul>
        </div>
        <div>
            <!-- 显示登录用户的欢迎信息 -->
            @auth
                <span class="text-white">欢迎, {{ Auth::user()->name }}</span>
            <!-- @else
                <span class="text-white">欢迎, 请登录</span>
            @endauth -->

            <!-- 登出按钮 -->
            <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="text-white text-lg ms-3">
                登出
            </a> 

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div>
    </div>
</div>
</div>
<!-- 导航栏 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <!-- <img class="logo" src="/images/fdlg.jpg" class="img-fluid" /> -->
            富达视频
        </a>
</nav>   

<!-- 主体内容 -->
<div class="container">
        <div class="row">
            @foreach($data as $video)
                <div class="col-3 col-sm-6 col-lg-3 mb-4"> 
                    <div class="card">
                        <div class="video-thumbnail">
                            <a href="{{ route('video.show', ['id'=>$video->id]) }}">
                                <img src="{{ $video->vod_pic }}" alt="Video Thumbnail">    
                            </a>
                        </div> 
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="{{ route('video.show', ['id'=>$video->id]) }}">
                                    {{ mb_substr($video->vod_name, 0, 24, "UTF-8")  }}
                                </a>
                            </h5>
                            <p class="card-text">
                                热度: {{ $video->views ?? 0 }} 
                                收藏: {{ $video->favorites ?? 0 }} 
                                留言: {{ $video->comments ?? 0 }} 
                            </p>
                        </div>
                    </div>
                </div>  
            @endforeach

            <!-- 分页 -->
            <div class="row">
                <div class="col-2">&nbsp;</div>
                <div class="pagination col-8">
                    {{ $data->links('pagination::bootstrap-5') }}
                </div>
                <div class="col-2">&nbsp;</div>
            </div>
        </div>
    </div>

<!-- 页脚 -->
<footer class="text-center">
    <div class="container">
        <p class="mt-3">
            警告：此网站只适合18岁或以上人士观看。此网站内容可能会令人反感，未满18岁者请勿进入。<br>
            网站的所有者对非法行为不承担任何责任。网站内容纯属娱乐目的，内容和表现可能是虚构的，请您知晓和理解。<br>
            如有任何问题，请联系我们。
        </p>
        <div>
            <a href="#">dmca</a> | <a href="#">隐私政策</a> | <a href="#">使用协议</a>
        </div>
    </div>
</footer>

</body>
</html>
