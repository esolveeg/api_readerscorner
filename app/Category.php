<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Rennokki\QueryCache\Traits\QueryCacheable;

class Category extends Model
{
    protected $guarded = [];
    use QueryCacheable;
    public $cacheFor = 60*60*24*3;
    public function scopeMain($query)
    {
        return $query->where('parent_id' , null);
    }
}
