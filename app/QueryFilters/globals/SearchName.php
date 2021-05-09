<?php

namespace App\QueryFilters\globals;

use Closure;

class SearchName
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('search')){
            return $builder;
        }
        
        return $builder->where(function($query) {
            $query->where('name' , 'LIKE' , '%'.request("search").'%');
        });
    }

}