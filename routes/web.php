<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/myid', 'NotificationController@id');
Route::get('/notif', 'NotificationController@notifView');
Route::post('/submitNotif', 'NotificationController@notif');

Route::get('/message/{id}', 'NotificationController@showMessage');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
