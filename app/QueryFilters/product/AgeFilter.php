<?php

namespace App\QueryFilters\product;

use App\Age;
use Closure;

class AgeFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('age')){
            return $builder;
        }
        $age = Age::where('slug' , request("age"))->first();
        // dd($age);
        if($age == null){
            return $builder;
        }
        return $builder->where('age_id' , $age->id);
    }

}