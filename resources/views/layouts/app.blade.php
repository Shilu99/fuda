<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>富达视频</title>

    <!-- 引入 Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/home.css" rel="stylesheet" type="text/css">

</head>
<body>

<!-- 顶部栏 -->
<div class="bg-dark text-light py-2">
    <div class="container d-flex justify-content-between">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="languageDropdown" data-bs-toggle="dropdown" aria-expanded="false">
            {{ __('message.locale_label') }}
            </button>
            <ul class="dropdown-menu" aria-labelledby="languageDropdown">
            <li><a class="dropdown-item" href="{{ route('locale', 'zh') }}">简体中文</a></li>
            <li><a class="dropdown-item" href="{{ route('locale', 'en') }}">English</a></li>
            </ul>
        </div>
        <div>
            <!-- <a href="" class="text-light me-3">注册</a>
            <a href="#" class="text-light">登录</a> -->
            <a href="{{ route('register') }}" class="text-light me-3">{{ __('message.register') }}</a>
            <a href="{{ route('login') }}" class="text-light">{{ __('message.login') }}</a>

        </div>
    </div>
</div>
<!-- 导航栏 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img class="logo" src="/images/fdlg.jpg" class="img-fluid" />
            富达视频
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_upload') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_videos') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_forum') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_beauty') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_movie') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">{{ __('message.home_vip') }}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>    


<!-- 横幅部分 -->
<div class="banner">
    <a href="">
        <img class="img-fluid" src="https://fans.91selfie.com/fans/daili91.gif">
    </a>
</div>

<!-- 搜索栏 -->
<div class="container my-3">
    <div class="row">
        <div class="col-md-12 d-flex justify-content-center">
            <input type="text" class="form-control w-50" placeholder="{{ __('message.search_placeholder') }}">
            <button class="btn btn-warning ms-2">{{ __('message.search_vod') }}</button>
        </div>
    </div>
</div>


<!-- 主体内容 -->
<div class="container mt-4">
    @yield('content')  <!-- 子视图内容 -->
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

<!-- 引入 Bootstrap 5 JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
