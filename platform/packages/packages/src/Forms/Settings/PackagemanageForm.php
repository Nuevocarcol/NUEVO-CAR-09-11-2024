<?php

namespace Packages\Forms\Settings;

use Packages\Http\Requests\Settings\PackagemanageRequest;
use Botble\Setting\Forms\SettingForm;

class PackagemanageForm extends SettingForm
{
    public function buildForm(): void
    {
        parent::buildForm();

        $this
            ->setSectionTitle('Setting title')
            ->setSectionDescription('Setting description')
            ->setValidatorClass(PackagemanageRequest::class);
    }
}
