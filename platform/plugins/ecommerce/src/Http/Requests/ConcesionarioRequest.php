<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Rules\EmailRule;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\Customer;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class ConcesionarioRequest extends Request
{
    public function rules(): array
    {
        $rules = [
            'ciudad' => [
                'required',
            ],
            'email' => [
                'required',
            ],
            'name' => ['required', 'max:120', 'min:2'],
            'direccion' => [
                'required',
                'string',
                'min:2',
                'max:255',
            ],
            'nit' => [
                'required',
                'numeric',
            ],
            'phone' => [
                'nullable',
                'numeric',
            ],
            'password' => ['required', 'min:6', 'confirmed'],
            'agree_terms_and_policy' => ['sometimes', 'accepted:1'],
        ];

        return apply_filters('ecommerce_customer_registration_form_validation_rules', $rules);
    }

    public function attributes(): array
    {
        return apply_filters('ecommerce_customer_registration_form_validation_attributes', [
            'name' => __('Name'),
            'nit' => __('Nit'),
            'email' => __('Email'),
            'password' => __('Password'),
            'phone' => __('Phone'),
            'agree_terms_and_policy' => __('Term and Policy'),
        ]);
    }

    public function messages(): array
    {
        return apply_filters('ecommerce_customer_registration_form_validation_messages', []);
    }
}
