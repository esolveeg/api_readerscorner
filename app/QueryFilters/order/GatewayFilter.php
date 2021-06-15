<?php

namespace App\QueryFilters\order;

use Closure;

class GatewayFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('gateway')){
            return $builder;
        }
        return $builder->where('gateway' , request('gateway'));
    }

}