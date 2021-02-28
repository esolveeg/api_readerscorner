<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded = [];

    public function scopeMain($query)
    {
        return $query->where('parent_id' , null);
    }
}
