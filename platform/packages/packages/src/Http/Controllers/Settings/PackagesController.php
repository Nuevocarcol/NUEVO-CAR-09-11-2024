<?php

namespace Botble\Packages\Http\Controllers\Settings;

use Botble\Base\Forms\FormBuilder;
use Botble\Packages\Forms\Settings\PackagesForm;
use Botble\Packages\Http\Requests\Settings\PackagesRequest;
use Botble\Setting\Http\Controllers\SettingController;

class PackagesController extends SettingController
{
    public function edit(FormBuilder $formBuilder)
    {
        $this->pageTitle('Page title');

        return $formBuilder->create(PackagesForm::class)->renderForm();
    }

    public function update(PackagesRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
