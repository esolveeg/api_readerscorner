<?php

namespace App\QueryFilters\documents;

use Closure;

class SearchIemFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('search') || request('search') == 'undefined' || request('search') == 'null'){
            return $builder;
        }
        // dd(request('branch'));
        return $builder->where(function($query) {
            $query->where('products.title' , 'LIKE' , '%'.request("search").'%')
                    ->orWhere('products.isbn' , 'LIKE' , '%'.request("search").'%');
        });
    }

}