<?php

namespace App\QueryFilters\product;

use App\Age;
use App\Language;
use Closure;

class LanguageFilter
{
    public function handle($request , Closure $next)
    {

        $builder = $next($request);
        if(!request()->has('language')){
            return $builder;
        }
        $language = Language::where('slug' , request("language"))->first();
        $id = $language == null ? Language::where('slug' , 'en')->first()->id : $language->id;
        // dd($id);
        // dd($id);
        return $builder->where('language_id' , $id);
    }

}