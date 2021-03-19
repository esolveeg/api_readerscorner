<?php

namespace App\QueryFilters\globals;

use Closure;

class BranchFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('branch') || request('branch') == 'undefined' || request('branch') == 'null'){
            return $builder;
        }
        return $builder->where('branches.id' , request('branch'));;
    }

}