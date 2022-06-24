<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers;
use Illuminate\Support\Facades\File;

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



Route::get('/', [Controllers\ListingController::class,'index'])
    ->name('listings.index');

Route::get('/new', [Controllers\ListingController::class,'create'] )
    ->name('listings.create');    

Route::post('/new', [Controllers\ListingController::class,'store'] )
    ->name('listings.store'); 

Route::get('/dashboard', function (Request $request) {
    return view('dashboard', [
        // $request->user() pulls in the authenticatedd user
        'listings' => $request->user()->listings
    ]);
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

// "Catch all route" 
// Model route binding with a diferrent column (slug)
Route::get('/{listing:slug}',[Controllers\ListingController::class,'show'])
    ->name('listings.show');

// "Catch all route" 
Route::get('/{listing}/apply',[Controllers\ListingController::class,'apply'])
->name('listings.apply');