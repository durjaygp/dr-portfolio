<?php

namespace App\Providers;

use App\Models\Service;
use App\Models\User;
use Filament\Support\Facades\FilamentView;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\WebsiteSetting;
use App\Models\HomepageSetting;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
        parent::register();
        FilamentView::registerRenderHook('panels::body.end', fn(): string => Blade::render("@vite('resources/js/app.js')"));
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
//        Gate::define('viewApiDocs', function (User $user) {
//            return true;
//        });
//        // Gate::policy()
//        Event::listen(function (\SocialiteProviders\Manager\SocialiteWasCalled $event) {
//            $event->extendSocialite('discord', \SocialiteProviders\Google\Provider::class);
//        });
        // Fetch settings only once per request
        $websiteSettings = cache()->rememberForever('setting', fn() => WebsiteSetting::first());
        $homepageSettings = cache()->rememberForever('homepage', fn() => HomepageSetting::first());
        $menuService = cache()->rememberForever('menuServices', fn() => Service::select(['name', 'slug', 'icons'])->whereStatus(1)->get());

        // Share globally
        View::share([
            'setting' => $websiteSettings,
            'homepage' => $homepageSettings,
            'menuServices' => $menuService,
        ]);
    }
}
