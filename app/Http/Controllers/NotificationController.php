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

        $receiver = \App\User::findOrFail($idReceiver);
        $receiver->notify(new UserNotif($newMessage));
    	return "You notify " . $receiver->name . "!!<br>Your message is \"" . $message . "\"";
    }

    public function showMessage($id) {
        $message = \App\Message::findOrFail($id);
        $sender = \App\User::findOrFail($message->from_id);
        if (Auth::id() == $message->to_id) {
            auth()->user()->unreadNotifications->markAsRead();
            return $sender->name . " messaged you :<br>" . $message->message;
        } else return "You have no right to open this message";
    }


    /**
     * Update posisi menu
     *
     * @param  int  $id
     * @return Response
     */
    public function sendemail()
    {
 
            $data_toview = array();
            $data_toview['bodymessage'] = "Hello send test email";
 
            $email_sender   = 'spartahmif2015@gmail.com';
            $email_pass     = 'KekeluargaanForSparta';
            $email_to       = '13514099@std.stei.itb.ac.id';
 
            // Backup your default mailer
            $backup = \Mail::getSwiftMailer();
 
            try{
                //https://accounts.google.com/DisplayUnlockCaptcha
                // Setup your gmail mailer
                $transport = \Swift_SmtpTransport::newInstance('smtp.gmail.com', 587, 'tls');
                $transport->setUsername($email_sender);
                $transport->setPassword($email_pass);

                // Any other mailer configuration stuff needed...
                $gmail = new Swift_Mailer($transport);

                // Set the mailer as gmail
                \Mail::setSwiftMailer($gmail);

                $data['emailto'] = $email_sender;
                $data['sender'] = $email_to;
                //Sender dan Reply harus sama

                Mail::send('emails.html', $data_toview, function($message) use ($data)
                {

                    $message->from($data['sender'], 'Laravel Mailer');
                    $message->to($data['emailto'])
                    ->replyTo($data['sender'], 'Laravel Mailer')
                    ->subject('Test Email');

                    echo 'The mail has been sent successfully';

                });
 
            }catch(\Swift_TransportException $e){
                $response = $e->getMessage() ;
                echo $response;
            }
 
 
            // Restore your original mailer
            Mail::setSwiftMailer($backup);
 
 
    }



}
