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
        Schema::create('ads', function (Blueprint $table) {
            $table->id('id'); // Creates an auto-incrementing primary key column named 'aid'
            $table->string('adname'); // For ad name
            $table->text('adcode'); // For ad code (can be long)
            $table->date('start_date'); // For ad start date
            $table->date('end_date'); // For ad end date
            $table->boolean('enable')->default(true); // For enable flag
            $table->timestamps(); // Adds created_at and updated_at columns
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ads');
    }
};
