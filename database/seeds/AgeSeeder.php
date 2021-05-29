<?php

use App\Age;
use Illuminate\Database\Seeder;

class AgeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $ages = [
            [
            'title' => 'from 0 to 3',
            ],
            [
                'title' => 'from 3 to 5',
            ],
            [
                'title' => 'from 5 to 7',
            ],
            [
                'title' => 'from 7 to 9',
            ],
            [
                'title' => 'from 9 to 11',
            ],
        ];
        foreach($ages as $age){
            $slug = slugify($age['title']);
            $age['slug'] = $slug;
            Age::create($age);
        }
    }
}
