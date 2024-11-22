@extends('layouts.app')

@section('content')
    <!-- 视频内容 -->
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
@endsection
