<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $guarded = [];


    public function scopeActive($query)
    {
        return $query->whereDate('expires_at', '>', now());
    }
}
