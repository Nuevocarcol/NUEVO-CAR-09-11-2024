<div class="btn-list">
    <x-core::button
        type="button"
        color="danger"
        class="btn-trigger-delete-selected-variations"
        :data-target="route('products.delete-versions')"
        :tooltip=" trans('plugins/ecommerce::products.delete_selected_variations')"
        icon="ti ti-trash"
        :icon-only="true"
        style="display: none"
    />

    <x-core::button
        type="button"
        class="btn-trigger-select-product-attributes"
        :data-target="route('products.store-related-attributes', $product->id)"
    >
        {{ trans('plugins/ecommerce::products.edit_attribute') }}
    </x-core::button>

    <!--<x-core::button
        type="button"
        data-bb-toggle="btn-trigger-generate-versions"
        :data-target="route('products.generate-all-versions', $product->id)"
    >
        {{ trans('plugins/ecommerce::products.generate_variations') }}
    </x-core::button>

    <x-core::button
        type="button"
        class="btn-trigger-add-new-product-variation"
        :data-target="route('products.add-version', $product->id)"
        :data-load-form="route('products.get-version-form', ['id' => 0, 'product_id' => $product->id])"
        :data-processing="trans('plugins/ecommerce::products.processing')"
    >
        {{ trans('plugins/ecommerce::products.add_new_variation') }}
    </x-core::button>-->
</div>
