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
    Schema::create('videos', function (Blueprint $table) {
        $table->id(); // 自增ID
        // $table->integer('vod_id')->unique(); // 视频的唯一ID
        $table->integer('vod_id'); // 去掉 unique 约束
        $table->string('vod_name'); // 视频名称
        $table->string('vod_class')->nullable(); // 视频分类
        $table->string('vod_pic')->nullable(); // 视频封面图片URL
        $table->string('vod_play_url'); // 视频播放URL
        $table->string('type_name')->nullable(); // 类型名称
        // $table->string('vod_play_from')->nullable(); // 视频来源
        $table->timestamps(); // created_at 和 updated_at 时间戳
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('videos');
    }
};
