<?php

namespace Botble\Concesionarios\Http\Controllers\Settings;

use Botble\Base\Forms\FormBuilder;
use Botble\Concesionarios\Forms\Settings\ConcesionariosForm;
use Botble\Concesionarios\Http\Requests\Settings\ConcesionariosRequest;
use Botble\Setting\Http\Controllers\SettingController;

class ConcesionariosController extends SettingController
{
    public function edit(FormBuilder $formBuilder)
    {
        $this->pageTitle('Page title');

        return $formBuilder->create(ConcesionariosForm::class)->renderForm();
    }

    public function update(ConcesionariosRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
