<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;
    protected $fillable = [
        'name', 'email', 'password','phone','branch_id' , 'admin' , 'role_id'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->diffForHumans();
    }
    public function addresses()
    {
        return $this->hasMany(Address::class);
    }

    public function scopeAdmin($query)
    {
        return $query->where('admin' ,true);
    }
    public function AauthAcessToken(){
        return $this->hasMany('\App\OauthAccessToken');
    }
}
