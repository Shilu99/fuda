<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class tupian extends Model
{
    use HasFactory;

    protected $table = 'tupians';

    // Specify the fillable attributes
    protected $fillable = [
        'img',
        'enable',
        'weizhi',
        'image_column',
        'lianjie',
        'paiwei',
        'intime',
        'name',
    ];

}
