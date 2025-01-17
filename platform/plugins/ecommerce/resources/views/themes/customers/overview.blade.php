@extends(EcommerceHelper::viewPath('customers.master'))

@section('title', __('Overview'))

@section('content')
    @php
        $customer = auth('customer')->user();
        EcommerceHelper::registerThemeAssets();
    @endphp

    <div class="bb-customer-profile-wrapper">
        <div class="bb-customer-profile">
            <div class="bb-customer-profile-avatar">
                {{ RvMedia::image($customer->avatar_url, $customer->name, attributes: ['class' => 'bb-customer-profile-avatar-img', 'data-bb-value' => 'customer-avatar']) }}
                <div class="bb-customer-profile-avatar-overlay">
                    <input type="file" id="customer-avatar" name="avatar" data-bb-toggle="change-customer-avatar" data-url="{{ route('customer.avatar') }}" />
                    <label for="customer-avatar"><x-core::icon name="ti ti-camera" /></label>
                </div>
            </div>

            <div class="bb-customer-profile-info">
                <h4>{!! BaseHelper::clean(
                __('Hola!, <strong>:name</strong>, Estamos Felices de que te conectes en NuevoCar', [
                    'name' => $customer->name,
                ]),
            ) !!}</h4>
                <p>{!! BaseHelper::clean(
                __(
                    'Desde tu Cuenta de Nuevo Car puedes <a class="text-primary" href="/admin/products">Crear Publicaciones de Productos</a>, y Configurar tu cuenta <a class="text-primary" href=":edit_account">Editar tu contraseña e información de tu cuenta</a>.',
                    [
                        'order' => route('dashboard.index'),
                        'edit_account' => route('customer.edit-account'),
                    ],
                ),
            ) !!}</p>
            </div>
        </div>

        @if (! $customer->orders()->exists())
            <div
                role="alert"
                class="alert alert-info d-flex align-items-center justify-content-between mt-3 mb-0"
            >
                <div class="row row-cols-1 row-cols-sm-2 w-100">
                    <div class="col">
                        <x-core::icon name="ti ti-circle-check" />
                        {{ __('Puedes Explorar los ultimos vehiculos publicados en NuevoCar') }}
                    </div>

                    <div class="col text-start mt-3 mt-sm-0 text-sm-end">
                        <a href="{{ route('public.products') }}" class="text-primary">{{ __('Browse products') }}</a>
                    </div>
                </div>
            </div>
        @endif
    </div>
@endsection
