<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            CitySeeder::class,
            UserSeeder::class,
            CategorySeeder::class,
            AgeSeeder::class,
            LanguageSeeder::class,
            CouponSeeder::class,
            AuthorSeeder::class,
            ProductSeeder::class,
            KeySeeder::class,
            KeyProductSeeder::class,
            SliderSeeder::class,
        ]);
    }
}
