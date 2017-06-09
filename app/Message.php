<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    //sender
    public function from() {
    	return $this->belongsTo(User::class,'from_id');
    }

    //receiver
    public function to() {
    	return $this->belongsTo(User::class, 'to_id');
    }
}
