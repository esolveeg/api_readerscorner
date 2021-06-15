<?php

namespace App\QueryFilters\order;

use Closure;

class StatusFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('status')){
            return $builder;
        }
        return $builder->where('status' , request('status'));
    }

}