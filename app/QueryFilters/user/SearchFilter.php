<?php

namespace App\QueryFilters\user;

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
        
        return $builder->where(function($query) {
            $query->where('branches.name' , 'LIKE' , '%'.request("search").'%')
                    ->orWhere('roles.name' , 'LIKE' , '%'.request("search").'%')
                    ->orWhere('users.name' , 'LIKE' , '%'.request("search").'%')
                    ->orWhere('users.email' , 'LIKE' , '%'.request("search").'%')
                    ->orWhere('users.phone' , 'LIKE' , '%'.request("search").'%');
        });
    }

}