<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Notifications\UserNotif;

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
        $message = $request->message;
        $idReceiver = $request->user;
        $newMessage = new \App\Message;
        $newMessage->message = $message;
        $newMessage->from_id = Auth::id();
        $newMessage->to_id = $idReceiver;
        $newMessage->save();

        auth()->user()->notify(new UserNotif($newMessage));
    	return "You notify " . \App\User::findOrFail($idReceiver)->name . "!!<br>Your message is \"" . $message . "\"";
    }

    public function showMessage($id) {
        return \App\Message::findOrFail($id)->message;
    }
}
