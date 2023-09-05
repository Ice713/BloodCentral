<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ManagementController;
use App\Http\Controllers\DonorsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/login-donor', function () {
    return view('login-donor');
});

Route::get('/donors', function () {
    return view('donors/index');
});

Route::controller(ManagementController::class)->group(function() {
    Route::get('management/', 'index');
    Route::get('management/donors', 'donors');
    Route::post('/login-medtech', 'loginMedtechAccount');
    Route::get('management/profile', 'profile');
    Route::get('admin/aglogout', 'logoutAccount')->name('aglogout.logoutAccount');
});

Route::controller(DonorsController::class)->group(function() {
    Route::post('management/add-donor', 'addDonor');
    Route::post('/donor-register', 'addDonor');
    Route::get('management/donors', 'displayDonors');
    Route::post('management/get-donor-edit', 'fetchDonor');    
    Route::post('management/delete_donor', 'deleteDonor');
});