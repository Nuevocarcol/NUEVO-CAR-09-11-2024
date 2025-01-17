<?php

namespace Botble\Ecommerce\Forms\Fronts\Auth;

use Botble\Base\Facades\Html;
use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;
use Botble\Base\Forms\FieldOptions\HtmlFieldOption;
use Botble\Base\Forms\Fields\EmailField;
use Botble\Base\Forms\Fields\HtmlField;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\PasswordField;
use Botble\Base\Forms\Fields\PhoneNumberField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Forms\Fronts\Auth\FieldOptions\EmailFieldOption;
use Botble\Ecommerce\Forms\Fronts\Auth\FieldOptions\TextFieldOption;
use Botble\Ecommerce\Http\Requests\ConcesionarioRequest;
use Botble\Ecommerce\Http\Requests\RegisterRequest;
use Botble\Ecommerce\Models\Customer;
use Yajra\DataTables\Html\Editor\Fields\Select2;

class ConcesionarioForm extends AuthForm
{
    public static function formTitle(): string
    {
        return __('Customer register form');
    }

    public function setup(): void
    {
        parent::setup();

        $this
            ->setUrl(route('customer.registercon.post'))
            ->setValidatorClass(ConcesionarioRequest::class)
            ->icon('ti ti-user-plus')
            ->heading(__('Registrar un Concesionario'))
            ->description(__('Sus datos personales se utilizaran para respaldar su experiencia en este sitio web y para administrar el acceso a su cuenta.'))
            ->when(
                theme_option('register_background'),
                fn (AuthForm $form, string $background) => $form->banner($background)
            )
            ->add(
                'ciudad', // Nombre del campo
                'customSelect', // Tipo de campo (puede variar según la implementación)
                [
                    'label' => 'Ciudad', // Etiqueta del campo
                    'label_attr' => ['class' => 'control-label'], // Clase de la etiqueta
                    'choices' => EcommerceHelper::getCitiesName(), // Opciones del select (array asociativo de id => nombre)
                    'attr' => [
                        'class' => 'form-control select2', // Clase para Select2
                        'placeholder' => 'Seleccione una ciudad', // Placeholder para el select
                    ],
                ]
            )
            ->add(
                'name',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Nombre Concesionario'))
                    ->placeholder(__('Nombre Concesionario'))
                    ->icon('ti ti-user')
                    ->toArray()
            )
            ->add(
                'nit',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Nit Concesionario'))
                    ->placeholder(__('Nit'))
                    ->icon('ti ti-user')
                    ->toArray()
            )
            ->add(
                'address',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Direccion Concesionario'))
                    ->placeholder(__('Tu Direccion'))
                    ->icon('ti ti-home')
                    ->toArray()
            )
            ->add(
                'email',
                EmailField::class,
                EmailFieldOption::make()
                    ->label(__('Email'))
                    ->when(EcommerceHelper::isLoginUsingPhone(), function (EmailFieldOption $fieldOption) {
                        $fieldOption->label(__('Email (optional)'));
                    })
                    ->placeholder(__('Your email'))
                    ->icon('ti ti-mail')
                    ->addAttribute('autocomplete', 'email')
                    ->toArray()
            )
            ->add(
                'phone',
                PhoneNumberField::class,
                TextFieldOption::make()
                    ->label(__('Phone (optional)'))
                    ->placeholder(__('Phone number'))
                    ->when(EcommerceHelper::isLoginUsingPhone() || get_ecommerce_setting('make_customer_phone_number_required', false), function (TextFieldOption $fieldOption) {
                        $fieldOption
                            ->required()
                            ->label(__('Phone'));
                    })
                    ->icon('ti ti-phone')
                    ->addAttribute('autocomplete', 'tel')
                    ->toArray()
            )
            ->add(
                'password',
                PasswordField::class,
                TextFieldOption::make()
                    ->label(__('Password'))
                    ->placeholder(__('Password'))
                    ->icon('ti ti-lock')
                    ->toArray()
            )
            ->add(
                'password_confirmation',
                PasswordField::class,
                TextFieldOption::make()
                    ->label(__('Password confirmation'))
                    ->placeholder(__('Password confirmation'))
                    ->icon('ti ti-lock')
                    ->toArray()
            )
            //Consecionarios
            ->add(
                'agree_terms_and_policy',
                OnOffCheckboxField::class,
                CheckboxFieldOption::make()
                    ->when(
                        $privacyPolicyUrl = theme_option('ecommerce_term_and_privacy_policy_url') ?: theme_option('term_and_privacy_policy_url'),
                        function (CheckboxFieldOption $fieldOption, string $url) {
                            $fieldOption->label(__('I agree to the :link', ['link' => Html::link($url, __('Terms and Privacy Policy'), attributes: ['class' => 'text-decoration-underline', 'target' => '_blank'])]));
                        }
                    )
                    ->when(! $privacyPolicyUrl, function (CheckboxFieldOption $fieldOption) {
                        $fieldOption->label(__('Acepto los Terminos y la Politica de Privacidad'));
                    })
                    ->toArray()
            )
            ->submitButton(__('Register'), 'ti ti-arrow-narrow-right')
            ->add(
                'login',
                HtmlField::class,
                HtmlFieldOption::make()
                    ->view('plugins/ecommerce::customers.includes.login-link')
                    ->toArray()
            )
            ->add('filters', HtmlField::class, [
                'html' => apply_filters(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, null, Customer::class),
            ]);
    }
}
