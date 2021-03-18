<?php

namespace App\QueryFilters\product;

use Closure;

class ImageFilter
{
    //
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('image')){
            return $builder;
        }

        $builder  = request('image') == 0 ? $builder->where('thumbnail'  , null) :  $builder->where('thumbnail' , '!=' , null);
        return $builder->where('thumbnail' , '!=' , null);
    }

}