<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('slug')->unique();
            $table->string('thumbnail')->nullable();
            $table->string('image')->nullable();
            $table->string('isbn')->unique();
            $table->longtext('description')->nullable();
            $table->longtext('details')->nullable();
            $table->unsignedBigInteger('author_id')->nullable();
            $table->unsignedBigInteger('language_id')->nullable();
            $table->unsignedBigInteger('age_id')->nullable();
            $table->unsignedFloat('price');
            $table->unsignedFloat('old_price')->nullable();
            $table->boolean('website')->default(true);
            $table->foreign('author_id')->references('id')->on('authors');
            $table->foreign('language_id')->references('id')->on('languages');
            $table->foreign('age_id')->references('id')->on('ages');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
