<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('accept_order_id')->nullable();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedBigInteger('address_id')->nullable();
            $table->foreign('address_id')->references('id')->on('addresses')->onDelete('set null');
            $table->string('discount_code')->nullable();
            $table->unsignedFloat('total');
            $table->unsignedFloat('shipping');
            $table->unsignedFloat('subtotal');
            $table->enum('status' , ['pending' , 'shipping' , 'shipped'])->default('shipping');
            $table->unsignedFloat('discount_value')->nullable();
            $table->unsignedInteger('discount_percent')->nullable();
            $table->enum('gateway' , ['card' , 'cod']);
            $table->string('error')->nullable();
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
        Schema::dropIfExists('orders');
    }
}
