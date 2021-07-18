<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateStockView extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("DROP VIEW stockView");
        DB::statement("CREATE VIEW stockView AS SELECT  s.branch_id, s.product_id , b.name , SUM(s.in - s.out) qty FROM stock s JOIN branches b ON b.id = s.branch_id WHERE ISNULL(s.deleted_at) GROUP BY s.product_id, s.branch_id");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW stockView");
    }
}
