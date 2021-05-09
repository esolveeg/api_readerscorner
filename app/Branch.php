<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Rennokki\QueryCache\Traits\QueryCacheable;
class Branch extends Model
{
    use QueryCacheable;
    protected $guarded = [];
}
