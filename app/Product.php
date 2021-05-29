<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Rennokki\QueryCache\Traits\QueryCacheable;

class Product extends Model
{
    protected $guarded = [];

    use QueryCacheable;
    // public $cacheFor = 60*60*24*3;
    public function author()
    {
        return $this->belongsTo(Author::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function keys()
    {
        return $this->belongsToMany(Key::class);
    }
    
}
