<?php

namespace Packages\Providers;

use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Packages\Models\Packagemanage;

class PackagemanageServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('packages/packagemanage')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Packagemanage::class, [
                'name',
            ]);
        }

        DashboardMenu::default()->beforeRetrieving(function () {
            DashboardMenu::registerItem([
                'id' => 'cms-packages-packagemanage',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'packages/packagemanage::packagemanage.name',
                'icon' => 'fa fa-list',
                'url' => route('packagemanage.index'),
                'permissions' => ['packagemanage.index'],
            ]);
        });
    }
}
