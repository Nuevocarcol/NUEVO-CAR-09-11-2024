<?php

use Illuminate\Support\Facades\Route;
use Botble\Base\Facades\AdminHelper;

Route::group(['namespace' => 'Botble\Packages\Http\Controllers'], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'packages', 'as' => 'packages.'], function () {
            Route::resource('', 'PackagesController')->parameters(['' => 'packages']);
        });
    });
});
