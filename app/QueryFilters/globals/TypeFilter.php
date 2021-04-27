<?php

namespace App\QueryFilters\globals;

use Closure;

class TypeFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('type') || request('type') == 'undefined' || request('type') == 'null'){
            return $builder;
        }

        return $builder->where('type' , request('type'));;
    }

}