<?php

namespace Packages\PanelSections;

use Botble\Base\PanelSections\PanelSection;

class PackagemanagePanelSection extends PanelSection
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
