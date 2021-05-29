<?php

use App\Author;
use Illuminate\Database\Seeder;

class AuthorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     
        $file = file_get_contents(public_path('authors.json'));
        $producst = json_decode($file);
        $chunks = array_chunk($producst , 500);
        foreach($chunks as $chunk){
          foreach($chunk as $index=>$author){
            $top = $index < 10 ?true : false;
            $author = ['name' => $author->name , 'author_slug' => $author->author_slug , 'top' => $top];
            // dd($author);
            $author = Author::create($author);
          }
          // Author::insert($chunk);
        }
    }
}
