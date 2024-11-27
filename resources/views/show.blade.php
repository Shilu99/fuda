@extends('layouts.base') <!-- 继承我们创建的基础布局 -->
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
                    <script src="/DPlayer.min.js"></script>
                    <script src="/hls.js"></script>

                    <script>
                        const dp = new DPlayer({
                            container: document.getElementById('dplayer-container'),
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
    </div>    
</div> 
@endsection
