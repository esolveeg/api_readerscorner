<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCartTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart', function (Blueprint $table) {
            $table->id();
             // products relationship
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedBigInteger('address_id')->nullable();
            $table->foreign('address_id')->references('id')->on('addresses');
            $table->unsignedFloat('shipping')->nullable();
            $table->string('discount_code')->nullable();
            $table->dateTime('closed_at')->nullable();
            $table->unsignedFloat('total')->nullable();
            $table->unsignedFloat('subtotal')->nullable();
            $table->bigInteger('accept_order_id')->nullable();
            $table->enum('status' , ['pending' , 'shipping' , 'shipped'])->default('shipping');
            $table->enum('gateway' , ['card' , 'cod']);
            $table->unsignedFloat('discount_value')->nullable();
            $table->unsignedInteger('discount_percent')->nullable();
            $table->string('error')->nullable();

            // categories relationship
            
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
        Schema::dropIfExists('cart');
    }
}
