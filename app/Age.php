<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Rennokki\QueryCache\Traits\QueryCacheable;

class Age extends Model
{
    protected $guarded = [];
    use QueryCacheable;
    // public $cacheFor = 60*60*24*3;
}
