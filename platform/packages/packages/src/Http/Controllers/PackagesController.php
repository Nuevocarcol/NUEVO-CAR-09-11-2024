<?php

namespace Botble\Packages\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Packages\Http\Requests\PackagesRequest;
use Botble\Packages\Models\Packages;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Packages\Tables\PackagesTable;
use Botble\Packages\Forms\PackagesForm;

class PackagesController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('packages/packages::packages.name')), route('packages.index'));
    }

    public function index(PackagesTable $table)
    {
        $this->pageTitle(trans('packages/packages::packages.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('packages/packages::packages.create'));

        return PackagesForm::create()->renderForm();
    }

    public function store(PackagesRequest $request)
    {
        $form = PackagesForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('packages.index'))
            ->setNextUrl(route('packages.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Packages $packages)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $packages->name]));

        return PackagesForm::createFromModel($packages)->renderForm();
    }

    public function update(Packages $packages, PackagesRequest $request)
    {
        PackagesForm::createFromModel($packages)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('packages.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Packages $packages)
    {
        return DeleteResourceAction::make($packages);
    }
}
