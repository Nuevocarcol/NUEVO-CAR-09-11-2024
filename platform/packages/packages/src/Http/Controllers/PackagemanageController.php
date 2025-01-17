<?php

namespace Packages\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Packages\Http\Requests\PackagemanageRequest;
use Packages\Models\Packagemanage;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Packages\Tables\PackagemanageTable;
use Packages\Forms\PackagemanageForm;

class PackagemanageController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('packages/packages::packagemanage.name')), route('packagemanage.index'));
    }

    public function index(PackagemanageTable $table)
    {
        $this->pageTitle(trans('packages/packages::packagemanage.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('packages/packages::packagemanage.create'));

        return PackagemanageForm::create()->renderForm();
    }

    public function store(PackagemanageRequest $request)
    {
        $form = PackagemanageForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('packagemanage.index'))
            ->setNextUrl(route('packagemanage.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Packagemanage $packagemanage)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $packagemanage->name]));

        return PackagemanageForm::createFromModel($packagemanage)->renderForm();
    }

    public function update(Packagemanage $packagemanage, PackagemanageRequest $request)
    {
        PackagemanageForm::createFromModel($packagemanage)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('packagemanage.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Packagemanage $packagemanage)
    {
        return DeleteResourceAction::make($packagemanage);
    }
}
