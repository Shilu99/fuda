<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $fillable = ['vod_name','vod_pic','vod_play_url','vod_class','type_name','vod_id','create_name'];

}
