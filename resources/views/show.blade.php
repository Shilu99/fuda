@extends('layouts.app')

@section('content')

<!-- Video Grid -->
<div class="container">
    <div class="row">
        <!-- First Video -->
        <div class="col-12 col-lg-8 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
						{{ $onevideo->vod_name }}
					</h5>
                    <div id="dplayer-container"></div>
					<!-- 引入 DPlayer JavaScript 文件 -->
					<script src="/DPlayer.min.js"></script>
					<!-- 引入 hls.js 以支持 m3u8 播放 -->
					<script src="/hls.js"></script>

					<script>
						const dp = new DPlayer({
							container: document.getElementById('dplayer-container'),
							//screenshot: true,
							video: {
								url: '{{ $onevideo->vod_play_url }}',
								pic: '{{ $onevideo->vod_pic }}',
								type: 'hls'
							}
						});
					</script>
                </div>
            </div>
        </div>
        <!-- Second Video -->
        <div class="col-12 col-lg-4 mb-4">
            <div class="card">
                <div class="video-thumbnail">
					<a href="">
						<img src="https://sesehuzyimg1.com/upload/vod/20240915-1/5acf054c8a79191bb8eed87a85282112.jpg" alt="Video Thumbnail">
					</a>	
                </div>
                <div class="card-body">
                    <h5 class="card-title">
						<a href="">
							[原创] 臀老婆该该泪地操...
						</a>
					</h5>
                    <p class="card-text">热度: 85815 收藏: 986 留言: 15 积分: 2000</p>
                </div>
            </div>
        </div>
     </div>    
</div>	  
@endsection 
