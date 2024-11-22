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
        Schema::create('links', function (Blueprint $table) {
            $table->bigIncrements('linkid'); // 主键 linkid，类型为 bigint
            $table->string('link_name', 255); // 链接名称
            $table->string('link_address', 255); // 链接地址
            $table->integer('sort')->unsigned()->default(0); // 排序，默认为 0
            $table->boolean('enable')->default(true); // 是否启用，默认为 1
            $table->timestamp('intime')->default(DB::raw('CURRENT_TIMESTAMP')); // 创建时间，默认为当前时间
            $table->timestamps(); // created_at 和 updated_at 字段
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('links');
    }
};
