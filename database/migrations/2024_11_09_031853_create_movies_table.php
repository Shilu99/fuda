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
        Schema::create('movies', function (Blueprint $table) {
            $table->id('mid'); // 主键，auto_increment
            $table->string('title', 400)->comment('标题');
            $table->unsignedInteger('cid')->comment('分类');
            $table->string('url', 400)->nullable()->comment('地址');
            $table->string('thumb', 400)->nullable()->comment('缩略图');
            $table->text('desc')->nullable()->comment('描述');
            $table->string('keywords', 200)->nullable()->index()->comment('关键词');
            $table->string('filename', 200)->nullable()->comment('文件名');
            $table->timestamp('created_time')->default(DB::raw('CURRENT_TIMESTAMP'))->comment('创建时间');
            $table->unsignedInteger('vodid')->nullable()->index()->comment('采集的id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movies');
    }
};
