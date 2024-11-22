<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Ad extends Model
{
    use HasFactory;

    protected $table = 'ads';

    // Specify the fillable attributes
    protected $fillable = [
        'adname',
        'adcode',
        'start_date',
        'end_date',
        'enable',
    ];

}
