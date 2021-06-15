<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Rennokki\QueryCache\Traits\QueryCacheable;

class Language extends Model
{
    use QueryCacheable;
    protected $guarded = [];
}
