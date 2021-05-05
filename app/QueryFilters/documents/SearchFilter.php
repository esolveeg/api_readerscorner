<?php

namespace App\QueryFilters\documents;

use Closure;

class SearchFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('search') || request('search') == 'undefined' || request('search') == 'null'){
            return $builder;
        }
        // dd(request('branch'));
        return $builder->where('users.name'  , 'LIKE' , '%'.request("search").'%');
    }

}