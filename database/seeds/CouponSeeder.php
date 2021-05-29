<?php

use App\Coupon;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class CouponSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $coupons = [
           [
                'code' => 'TWINITY',
                'value' => 20,
                'type' => 'fixed',
                'expires_at' => Carbon::parse('17-02-2021'),
           ],
           [
                'code' => 'EXPIRED',
                'value' => 20,
                'type' => 'fixed',
                'expires_at' => Carbon::parse('12-02-2021'),
            ],
            [
                'code' => 'TEN',
                'value' => 10,
                'type' => 'percent',
                'expires_at' => Carbon::parse('19-02-2021'),
            ],
       ];

       Coupon::insert($coupons);
    }
}
