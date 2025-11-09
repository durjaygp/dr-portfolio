<?php

use App\Livewire\Pages\Home;
use App\Livewire\SpaRouter;
use App\Models\Faq;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductImportController;
use App\Http\Controllers\RecipeImportController;
use App\Livewire\Pages\Service;
use App\Livewire\Pages\ServiceDetails;
use App\Livewire\Pages\ContactUs;
use App\Livewire\Pages\Blog;
use App\Livewire\Pages\BlogDetails;
use App\Livewire\Pages\AboutUs;
use App\Livewire\Pages\PageDetails;
use App\Livewire\Pages\BlogList;


Route::get('/', SpaRouter::class)->name('home');
Route::get('/service', Service::class)->name('home.service');
Route::get('/contact-us', ContactUs::class)->name('home.contact');
//Route::get('/about-us', AboutUs::class)->name('home.about');
Route::get('/service/{slug}', ServiceDetails::class)->name('service.details');
Route::get('/blog', Blog::class)->name('home.blog');
Route::get('/blogs', BlogList::class)->name('blog.index');
Route::get('/blog/{slug}', BlogDetails::class)->name('blog.details');

Route::get('faq', function (){
        return Faq::all();
})->name('home.faq');


////Route::get('/import-recipes', [RecipeImportController::class, 'showForm'])->name('import-recipes');
////Route::post('/import-recipes', [RecipeImportController::class, 'import'])->name('recipes.import');
//Route::middleware(['auth', 'role:super_admin'])->group(function () {
//    Route::get('/import-recipes', [RecipeImportController::class, 'showForm'])->name('import-recipes');
//    Route::post('/import-recipes', [RecipeImportController::class, 'import'])->name('recipes.import');
//});
////Route::get('/service/{slug}', ServiceDetails::class)->name('service.details');


Route::get('/{slug}', PageDetails::class)->name('page-details');
