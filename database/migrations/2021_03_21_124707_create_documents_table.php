<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('documents', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('created_by');
            $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');

            $table->unsignedBigInteger('account_id')->nullable();
            $table->foreign('account_id')->references('id')->on('accounts')->onDelete('set null');

            $table->unsignedBigInteger('branch_id');
            $table->foreign('branch_id')->references('id')->on('branches')->onDelete('cascade');

            $table->unsignedBigInteger('branch_to')->nullable();
            $table->foreign('branch_to')->references('id')->on('branches')->onDelete('set null');

            $table->smallInteger('type')->comment('[(-)[0 : sell , 1 : buy return  ] , (+)[2 : buy , 3 : sell return ], (=)[4 : inventory , 5 : define , 6 : first balance] , (+ , -)[7 : transactions]]');

            $table->unsignedFloat('discount_value')->nullable();
            $table->unsignedInteger('discount_percent')->nullable();
            
            $table->dateTime('closed_at')->nullable();
            $table->unsignedFloat('total')->nullable();
            $table->unsignedFloat('subtotal')->nullable();

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
        Schema::dropIfExists('documents');
    }
}
