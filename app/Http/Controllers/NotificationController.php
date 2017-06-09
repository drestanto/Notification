<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class NotificationController extends Controller
{
    //get id that authecticated
    public function id() {
    	if (Auth::check())
    		return Auth::id();
    	else return "You haven't login!!";
    }

    //give someone a notifications
    //view
    public function notifView() {
    	$users = \App\User::all();

    	return view('notif',compact('users'));
    }

    //action
    public function notif(Request $request) {
    	
    	return "You notify " . \App\User::findOrFail($request->user)->name . "!!";
    }
}
