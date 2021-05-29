<?php

use App\Key;
use Illuminate\Database\Seeder;

class KeySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $keys = [
            [
                'title' => 'home',
                'slug' => 'home',
            ],
            [
                'title' => 'bestseller',
                'slug' => 'bestseller',
            ],
            [
                'title' => 'deals',
                'slug' => 'deals',
            ],
        ];

        Key::insert($keys);
    }
}
