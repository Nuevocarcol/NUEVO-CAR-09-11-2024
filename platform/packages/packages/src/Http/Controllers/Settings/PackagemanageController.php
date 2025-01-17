<?php

namespace Packages\Http\Controllers\Settings;

use Botble\Base\Forms\FormBuilder;
use Packages\Forms\Settings\PackagemanageForm;
use Packages\Http\Requests\Settings\PackagemanageRequest;
use Botble\Setting\Http\Controllers\SettingController;

class PackagemanageController extends SettingController
{
    public function edit(FormBuilder $formBuilder)
    {
        $this->pageTitle('Page title');

        return $formBuilder->create(PackagemanageForm::class)->renderForm();
    }

    public function update(PackagemanageRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
