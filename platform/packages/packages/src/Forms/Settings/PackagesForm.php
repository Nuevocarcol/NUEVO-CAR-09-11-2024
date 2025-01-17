<?php

namespace Botble\Packages\Forms\Settings;

use Botble\Packages\Http\Requests\Settings\PackagesRequest;
use Botble\Setting\Forms\SettingForm;

class PackagesForm extends SettingForm
{
    public function buildForm(): void
    {
        parent::buildForm();

        $this
            ->setSectionTitle('Setting title')
            ->setSectionDescription('Setting description')
            ->setValidatorClass(PackagesRequest::class);
    }
}
