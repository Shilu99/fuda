<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
require __DIR__.'/auth.php';

Route::get('/', [HomeController::class, 'homepage'])->name('home');
Route::get('/show/{id}',  [HomeController::class, 'showVideo'])->name('video.show');

Route::get('/elephant', function(){ return 'hello, elephant'; })->name('elephant');

Route::get('/dashboard', [HomeController::class, 'dashboard'])->name('dashboard');

