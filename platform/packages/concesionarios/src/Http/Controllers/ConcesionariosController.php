<?php

namespace Botble\Concesionarios\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Concesionarios\Http\Requests\ConcesionariosRequest;
use Botble\Concesionarios\Models\Concesionarios;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Concesionarios\Tables\ConcesionariosTable;
use Botble\Concesionarios\Forms\ConcesionariosForm;

class ConcesionariosController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('packages/concesionarios::concesionarios.name')), route('concesionarios.index'));
    }

    public function index(ConcesionariosTable $table)
    {
        /*$this->pageTitle(trans('packages/concesionarios::concesionarios.name'));

        return $table->renderTable();*/
        $concesionarios=Concesionarios::where('activo',true);
        if($concesionarios){
            return view('concesionarios::index',compact('concesionarios'));
        }
    }

    public function create()
    {
        $this->pageTitle(trans('packages/concesionarios::concesionarios.create'));

        return ConcesionariosForm::create()->renderForm();
    }

    public function store(ConcesionariosRequest $request)
    {
        $form = ConcesionariosForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('concesionarios.index'))
            ->setNextUrl(route('concesionarios.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Concesionarios $concesionarios)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $concesionarios->name]));

        return ConcesionariosForm::createFromModel($concesionarios)->renderForm();
    }

    public function update(Concesionarios $concesionarios, ConcesionariosRequest $request)
    {
        ConcesionariosForm::createFromModel($concesionarios)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('concesionarios.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Concesionarios $concesionarios)
    {
        return DeleteResourceAction::make($concesionarios);
    }

    /**Metodo que obtiene todos los concesionarios disponibles
     * retorna la vista con todos los datos de usuarios que están disponibles
     */
    public function getAvailableConcesionaries(){
        $concesionarios=Concesionarios::where('activo',true);
        if($concesionarios){
            return view('concesionarios::index',compact('concesionarios'));
        }
        
    }
}
