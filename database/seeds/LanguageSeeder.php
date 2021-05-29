<?php

use App\Language;
use Illuminate\Database\Seeder;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $languages = [
            ['title' => 'English' , 'slug' => 'en'],
            ['title' => 'Arabic' , 'slug' => 'ar'],
            ['title' => 'Frensh' , 'slug' => 'fr'],
            ['title' => 'Germany' , 'slug' => 'gr'],
        ];
        Language::insert($languages);
    }
}
