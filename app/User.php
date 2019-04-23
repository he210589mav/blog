<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    public function makeAdmin()
    {
        $this->is_admin=1;
        $this->save();
    }
    public function makeNormal(){
        $this->is_admin=0;
        $this->save();
    }
    public function toggleAdmin($value)
    {
        if($value==null){
            return $this->makeNormal();
        }
        return $this->makeAdmin();
    }
}
