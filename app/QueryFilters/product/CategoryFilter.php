<?php

namespace App\QueryFilters\product;

use Closure;

class CategoryFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('category')){
            return $builder;
        }
        $cat = request("category");
        
        return $builder->with('categories')->whereHas('categories', function ($query)  use ($cat){
            $query->where('slug', $cat);
        });
    }

}