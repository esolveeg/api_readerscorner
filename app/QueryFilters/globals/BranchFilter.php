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
        // dd($builder);
        // dd(request('branch'));
        // where('branches.id' , 1)
        // dd(request('branch'));
        return $builder->where('branches.id' , intVal(request('branch')));
    }

}