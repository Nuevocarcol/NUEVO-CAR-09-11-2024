<?php

namespace Botble\Concesionarios\PanelSections;

use Botble\Base\PanelSections\PanelSection;

class ConcesionariosPanelSection extends PanelSection
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
