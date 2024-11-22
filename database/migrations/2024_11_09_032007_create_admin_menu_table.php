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
        Schema::create('admin_menu', function (Blueprint $table) {
            $table->id(); // 创建主键id，类型为 bigint
            $table->bigInteger('parent_id')->default(0); // parent_id
            $table->integer('order')->default(0); // order
            $table->string('title', 50); // title
            $table->string('icon', 50)->nullable(); // icon
            $table->string('uri', 50)->nullable(); // uri
            $table->string('extension', 50); // extension
            $table->tinyInteger('show')->default(1); // show
            $table->timestamps(); // created_at 和 updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admin_menu');
    }
};
