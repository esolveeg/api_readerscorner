<?php

namespace App\QueryFilters;

use Closure;

class KeyFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('key')){
            return $builder;
        }
        $key = request("key");
        
        return $builder->with('keys')->whereHas('keys', function ($query)  use ($key){
            $query->where('slug', $key);
        });
    }

}