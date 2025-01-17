@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <x-plugins-ecommerce::intro
        :title="trans('plugins/ecommerce::products.start_by_adding_new_product')"
        :subtitle="trans('plugins/ecommerce::products.manage_products')"
        :action-url="route('products.create')"
        :action-label="trans('plugins/ecommerce::products.add_new_product')"
    >
        <x-slot:icon>

        </x-slot:icon>

        @if (Auth::user()->hasPermission('ecommerce.import.products.index'))
            <x-slot:extra>
                <div class="mt-3">
                    <a href="{{ route('tools.data-synchronize.import.products.index') }}">{{ trans('plugins/ecommerce::products.import_products_intro') }}</a>
                </div>
            </x-slot:extra>
        @endif
    </x-plugins-ecommerce::intro>
@stop
