<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
    //    // Set the path of your .sql file
    //    $sql = public_path('init_db.sql');

    //    // You must change this one, its depend on your mysql bin.
      

    // DB::unprepared('');
        $this->call([
            // RoleSeeder::class,
            // BranchSeeder::class,
            // CitySeeder::class,
            // UserSeeder::class,
            // CategorySeeder::class,
            // AgeSeeder::class,
            // LanguageSeeder::class,
            // CouponSeeder::class,
            // AuthorSeeder::class,
            // ProductSeeder::class,
            // KeySeeder::class,
            // KeyProductSeeder::class,
            // SliderSeeder::class,
            AccountSeeder::class,
        ]);
    }
}
