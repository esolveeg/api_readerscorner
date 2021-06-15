<?php

use App\Slider;
use Illuminate\Database\Seeder;

class SliderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sliders = [
            [
            "product_id" => 69,
            "header" => ' <div class="header">LOVE OF</div>',
            "subheader" => '<div class="sub-header">STORY</div>',
            "gredient" => "linear-gradient(294deg, rgb(46, 102, 139) 0%, rgb(54, 119, 162) 100%)",
            ],
            [
                "product_id" => 180,
                "header" => ' <div class="header">THIS IS GOING </div>',
                "subheader" => '<div class="sub-header">TO HURT</div>',
                "gredient" => "linear-gradient(294deg, rgb(46, 102, 139) 0%, rgb(54, 119, 162) 100%)",
            ],
        ];
        Slider::insert($sliders);
    }
}
