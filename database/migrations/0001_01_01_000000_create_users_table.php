<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id(); // 自增主键
            $table->string('name'); // name 列
            $table->string('password'); // password 列
            $table->string('remember_token', 100)->nullable(); // remember_token 列
            $table->unsignedBigInteger('current_team_id')->nullable(); // current_team_id 列
            $table->timestamps(); // created_at 和 updated_at 列
            $table->string('gender')->nullable();
            $table->string('email')->unique(); // email 列，设置为唯一
            // $table->timestamp('email_verified_at')->nullable(); // email_verified_at 列
            // $table->text('two_factor_recovery_codes')->nullable(); // two_factor_recovery_codes 列
            // $table->text('two_factor_secret')->nullable(); // two_factor_secret 列
            // $table->string('profile_photo_path', 2048)->nullable(); // profile_photo_path 列
        });    
            
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users'); // 回滚时删除表
    }
};            


        
    