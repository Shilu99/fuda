<?php

namespace App\Providers;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // 获取会话中保存的语言设置，如果没有则使用默认语言
        $locale = Session::get('locale', config('app.locale'));

        // 设置应用语言
        App::setLocale($locale);
    }
}
