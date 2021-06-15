<?php

namespace App\QueryFilters\globals;

use Closure;

class FromFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('from')){
            return $builder;
        }
        
        return $builder->whereDate('documents.created_at' , '>=' , request('from'));
    }

}