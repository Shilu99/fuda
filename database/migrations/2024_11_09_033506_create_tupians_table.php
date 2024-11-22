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
        Schema::create('tupians', function (Blueprint $table) {
            $table->id(); // Creates an auto-incrementing primary key column named 'id'
            $table->string('img'); // For image file name or path
            $table->boolean('enable')->default(true); // For enable flag
            $table->string('weizhi'); // For position/location (you may want to define length)
            $table->string('image_column'); // For additional image info or column name
            $table->string('lianjie'); // For link/URL
            $table->integer('paiwei')->default(0); // For ranking/position order
            $table->timestamp('intime')->useCurrent(); // For creation timestamp
            $table->string('name'); // For the name associated with the image
            $table->timestamps(); // Adds created_at and updated_at columns
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tupians');
    }
};
