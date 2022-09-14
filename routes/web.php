<?php

use App\Http\Controllers\OrderController;
use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Route;

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
    return redirect()->route('login');
})->name('index');
Route::get('/contacts', function () {
    return view('contacts');
})->name('contacts');
Route::get('/about', function () {
    return view('about');
})->name('about');
Route::group(['middleware' => ['auth:sanctum', 'verified']], function () {
   Route::get('/dashboard', [PageController::class, 'dashboard'])->name('dashboard');
   Route::get('/panel', [PageController::class, 'panel'])->name('panel');
   Route::resource('/orders', OrderController::class);
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
