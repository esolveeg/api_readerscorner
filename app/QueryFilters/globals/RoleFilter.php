<?php

namespace App\QueryFilters\globals;

use Closure;

class RoleFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('role') || request('role') == 'undefined' || request('role') == 'null'){
            return $builder;
        }
        // dd(request('branch'));
        return $builder->where('roles.id' , request('role'));;
    }

}