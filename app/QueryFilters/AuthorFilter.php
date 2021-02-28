<?php

namespace App\QueryFilters;

use App\Author;
use Closure;

class AuthorFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('author')){
            return $builder;
        }
        $author = Author::where('author_slug' , request("author"))->first();
        if($author == null){
            return $builder;
        }
        return $builder->where('author_id' , $author->id);
    }

}