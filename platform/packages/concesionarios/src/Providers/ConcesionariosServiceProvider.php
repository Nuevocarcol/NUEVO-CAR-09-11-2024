<?php

namespace Botble\Concesionarios\Providers;

use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Concesionarios\Models\Concesionarios;

class ConcesionariosServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {

        // Cargar las rutas del paquete
        $this->loadRoutesFrom(__DIR__ . '/../../routes/web.php');

        // Cargar las vistas del paquete y definir el hint path
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'index');

        // Cargar las migraciones
        $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

        // Publicar las migraciones
        $this->publishes([
            __DIR__ . '/../../database/migrations' => database_path('migrations')
        ], 'concesionario_model');

        // Publicar las traducciones si es necesario (descomentando si se requiere)
        // $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'concesionario');

        // Registro con el módulo de Lenguajes Avanzados (opcional)
       /* if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Concesionarios::class, [
                'name',
            ]);
        }
        $this->setNamespace('packages/concesionarios')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadAndPublishViews();
            */

        // Registrar un nuevo ítem en el Dashboard Menu
        DashboardMenu::default()->beforeRetrieving(function () {
            DashboardMenu::registerItem([
                'id' => 'cms-packages-concesionarios',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'packages/concesionarios::concesionarios.name',
                'icon' => 'fa fa-list',
                'url' => route('concesionarios.index'),
                'permissions' => ['concesionarios.index'],
            ]);
        });
    }
}
