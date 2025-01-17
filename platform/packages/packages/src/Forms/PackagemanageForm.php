<?php

namespace Packages\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Packages\Http\Requests\PackagemanageRequest;
use Packages\Models\Packagemanage;

class PackagemanageForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->setupModel(new Packagemanage())
            ->setValidatorClass(PackagemanageRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'required' => true,
                'attr' => [
                    'placeholder' => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('limit_publications', 'text', [
                'label' => 'Limite de publicaciones',
                'required' => true,
                'attr' => [
                    'placeholder' => 'Limite de publicaciones',
                    'data-counter' => 120,
                ],
            ])
            ->add('time_publication', 'text', [
                'label' => 'Tiempo limite publicación (Dias)',
                'required' => true,
                'attr' => [
                    'placeholder' => 'Dias publicación',
                    'data-counter' => 120,
                ],
            ])
            ->add('price', 'text', [
                'label' => 'Precio',
                'required' => true,
                'attr' => [
                    'placeholder' => 'Precio',
                    'data-counter' => 120,
                ],
            ])
            ->add('whosale_price', 'text', [
                'label' => 'Precio consecionarios',
                'required' => true,
                'attr' => [
                    'placeholder' => 'Precio consecionarios',
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
