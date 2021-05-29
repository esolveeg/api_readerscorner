<?php

use App\City;
use Illuminate\Database\Seeder;

class CitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cities = [
                ['name' => 'cairo', 'shipping_fee' => 45,],
                ['name' => 'alexandria', 'shipping_fee' => 65,],
        ];
        City::insert($cities);
    }
}
