<?php

namespace Botble\Concesionarios\Forms\Settings;

use Botble\Concesionarios\Http\Requests\Settings\ConcesionariosRequest;
use Botble\Setting\Forms\SettingForm;

class ConcesionariosForm extends SettingForm
{
    public function buildForm(): void
    {
        parent::buildForm();

        $this
            ->setSectionTitle('Setting title')
            ->setSectionDescription('Setting description')
            ->setValidatorClass(ConcesionariosRequest::class);
    }
}
