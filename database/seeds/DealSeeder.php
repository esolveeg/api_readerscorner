<?php

use App\Deal;
use Illuminate\Database\Seeder;

class DealSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $deals = [
            [
                'expires_at' => '22-2-2021',
                'image' => '',
                'percent' => '30',
                'product_id' => 1
            ],
        ];
        Deal::insert($deals);
    }
}
