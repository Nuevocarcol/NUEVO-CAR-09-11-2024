<?php

namespace Botble\Packages\PanelSections;

use Botble\Base\PanelSections\PanelSection;

class PackagesPanelSection extends PanelSection
{
    public function setup(): void
    {
        $this
            ->setId('settings.{id}')
            ->setTitle('{title}')
            ->withItems([
                //
            ]);
    }
}
