<?php

namespace App\QueryFilters\globals;

use Closure;

class ToFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('to')){
            return $builder;
        }
        
        return $builder->whereDate('documents.created_at' , '<=' , request('to'));
    }

}