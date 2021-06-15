<?php

namespace App\QueryFilters\product;

use Closure;

class SearchFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('search')){
            return $builder;
        }
        
        return $builder->where('title' , 'LIKE' , '%'.request("search").'%')
                        ->orWhere('isbn' , 'LIKE' , '%'.request("search").'%');
    }

}