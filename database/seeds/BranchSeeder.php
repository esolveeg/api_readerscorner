<?php

use App\Branch;
use Illuminate\Database\Seeder;

class BranchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $branches = [
            ["name" =>'website'],
            ["name" =>'main branch'],
            ["name" =>'uptown cairo'],
            ["name" =>'point 90'],
            ["name" =>'Arkan mall'],
            ["name" =>'marasi'],
            ["name" =>'lavista'],
        ];
        Branch::insert($branches);
    }
}
