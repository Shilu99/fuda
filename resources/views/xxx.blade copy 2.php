<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>富达视频</title>
    <!-- Correct Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
		a {
			color: black;
		}
        .nav-link {
            color: white !important;
        }
		.logo {
			width: 8rem;
		}
        .banner {
            background-color: black;
            color: yellow;
            text-align: center;
            padding: 20px;
        }
        .content img {
            width: 100%;
            height: auto;
        }
        .video-thumbnail {
            position: relative;
            padding-top: 56.25%; /* 16:9 Aspect Ratio */
        }
        .video-thumbnail img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        footer {
            background-color: #333;
            color: #ddd;
            padding: 20px 0;
        }
        footer a {
            color: #f0ad4e;
            text-decoration: none;
        }
    </style>
</head>
<body>

<!-- Top Bar -->
<div class="bg-dark text-light py-2">
    <div class="container d-flex justify-content-between">
        <!-- Language Dropdown -->
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="languageDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                简体中文
            </button>
            <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                <li><a class="dropdown-item" href="#">简体中文</a></li>
                <li><a class="dropdown-item" href="#">English</a></li>
            </ul>
        </div>

        <!-- Register and Login Links -->
        <div>
            <a href="#" class="text-light me-3">注册</a>
            <a href="#" class="text-light">登录</a>
        </div>
    </div>
</div>

<!-- Navigation Bar -->
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
                    <a class="nav-link" href="#">上传</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">视频</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">论坛</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">美女视频</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">电影中心</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">VIP会员</a>
                </li>
                <!-- Dropdown for Register and Login on Mobile -->
                <div class="btn-group">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                   更多选项
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">我的视频</a></li>
                        <li><a class="dropdown-item" href="#">我的收藏</a></li>
                        <li><a class="dropdown-item" href="#">我关注的用户</a></li>
                        <li><a class="dropdown-item" href="#">我关注用户的视频</a></li>
                        <li><a class="dropdown-item" href="#">我的留言</a></li>
                        <li><a class="dropdown-item" href="#">论坛邀请码</a></li>
                    </ul>
                </div>
                
            </ul>
        </div>
    </div>
</nav>    



<!-- Banner -->
<div class="banner">
	<a href="">
		<img class="img-fluid" src="https://fans.91selfie.com/fans/daili91.gif">
	</a>
</div>

<!-- Search Bar -->
<div class="container my-3">
    <div class="row">
        <div class="col-md-12 d-flex justify-content-center">
            <input type="text" class="form-control w-50" placeholder="搜索视频">
            <button class="btn btn-warning ms-2">搜索</button>
        </div>
    </div>
</div>
<!-- Video Grid -->
<div class="container">
    <div class="row">
        <!-- Loop through each video in the database -->
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
                                {{ mb_substr($video->vod_name, 0, 30, "UTF-8")  }}
                            </a>
                        </h5>
                        <p class="card-text">
                            热度: {{ $video->views ?? 0 }} 
                            收藏: {{ $video->favorites ?? 0 }} 
                            留言: {{ $video->comments ?? 0 }} 
                            积分: 2000
                        </p>
                    </div>
                </div>
            </div>  
        @endforeach
    </div>
</div>


<!-- Footer -->
<footer class="text-center">
    <div class="container">
        <p>更多精华视频...</p>
        <!--<div>
            <a href="#">电脑版</a> | <a href="#">手机版</a>
        </div>-->
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

<!-- Bootstrap 5 JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</body>
</html>
