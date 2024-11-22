<?php

// namespace App\Models;

// use Illuminate\Database\Eloquent\Model;

// class User extends Model
// {
//     //
// }

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasFactory;

    // 批量赋值的字段
    protected $fillable = [
        'name',
        'email',
        'gender',
        'password',
    ];


    // // 隐藏敏感字段
    // protected $hidden = [
    //     'password',
    //     'remember_token',
    // ];
}
