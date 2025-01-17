<?php

namespace Botble\Concesionarios\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Concesionarios\Http\Requests\ConcesionariosRequest;
use Botble\Concesionarios\Models\Concesionarios;

class ConcesionariosForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->setupModel(new Concesionarios())
            ->setValidatorClass(ConcesionariosRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'required' => true,
                'attr' => [
                    'placeholder' => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core/base::tables.status'),
                'required' => true,
                'choices' => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
