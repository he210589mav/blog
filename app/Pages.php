<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{
    protected $fillable=['title_about','text_about','title_contact','name_contact','email_contact','phone_contact','msg_contact','button_contact'];
}
