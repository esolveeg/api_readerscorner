<?php

namespace App\QueryFilters\globals;

use Closure;

class ClosedFilter
{
    public function handle($request , Closure $next)
    {
        $builder = $next($request);
        if(!request()->has('closed') || request('closed') == 'undefined' || request('closed') == 'null'  ){
            return $builder;
        }
        $builder  = request('closed') == 0 ? $builder->where('closed_at'  , null) :  $builder->where('closed_at' , '!=' , null);

        return $builder;
    }

}