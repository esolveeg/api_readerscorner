<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
                ['title' => 'kids',],
                ['title' => 'Adults',],
            ];
        foreach($categories as $category){
            $slug = slugify($category['title']);
            $category['slug'] = $slug;
            $category = Category::create($category);
            $categories = [
                // map slug to {name of parent category} + -fiction
                [
                    'title' => 'fiction',
                    'slug' =>  $slug . '-fiction',
                    'parent_id' => $category['id'],
                ],
                // map slug to {name of parent category} + -nonfiction
                [
                    'title' => 'nonfiction',
                    'slug' =>   $slug . '-nonfiction',
                    'parent_id' => $category['id'],
                ]
            ];
            Category::insert($categories);
        }
    }
}
