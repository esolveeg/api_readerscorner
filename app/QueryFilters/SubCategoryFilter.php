<?php

namespace App\QueryFilters;

use Closure;

class SubCategoryFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('subcategory')){
            return $builder;
        }
        $cat = request("subcategory");
        
        return $builder->with('categories')->whereHas('categories', function ($query)  use ($cat){
            $query->where('slug', $cat);
        });
    }

}