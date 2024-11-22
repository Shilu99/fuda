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
    { Schema::create('admins', function (Blueprint $table) {
        $table->id(); // 自增主键
        $table->string('username', 120)->unique(); // username 列，设置为唯一
        $table->string('password', 80); // password 列
        // $table->string('name'); // name 列
        $table->string('avatar', 255)->nullable(); // avatar 列
        $table->string('remember_token', 100)->nullable(); // remember_token 列
        $table->timestamps(); // created_at 和 updated_at 列
      });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admins'); // 回滚时删除表
    }
};
