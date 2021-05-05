<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $guarded = [];
    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->diffForHumans();
    }
    public function getClosedAtAttribute($value)
    {
        if($value){
            return Carbon::parse($value)->diffForHumans();
        }
        return null;
    }
}
