<?php

use App\Account;
use Illuminate\Database\Seeder;

class AccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $accounts  = [
           [
            "name" => "customer 1",
            "email" => "customer@gmail.com",
            "phpne" => "01123456789",
            "type" => 0,
           ],

           [
            "name" => "supplier 1",
            "email" => "supplier@gmail.com",
            "phpne" => "01123456789",
            "type" =>1,
           ],
        ];

        Account::insert($accounts);
    }
}
