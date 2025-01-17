<?php

use Illuminate\Support\Facades\Route;
use Botble\Base\Facades\AdminHelper;

Route::group(['namespace' => 'Botble\Concesionarios\Http\Controllers'], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'concesionarios', 'as' => 'concesionarios.'], function () {
            Route::resource('', 'ConcesionariosController@index')->parameters(['' => 'concesionarios']);
        });
    });
});



