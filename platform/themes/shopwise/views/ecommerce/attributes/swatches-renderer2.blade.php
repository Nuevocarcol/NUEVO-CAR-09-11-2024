@php
$key = mt_rand();
@endphp
<div class="container-flex product-attributes"
    data-target="{{ route('public.web.get-variation-by-attributes', ['id' => $product->id]) }}">
    @php
    $variationInfo = $productVariationsInfo;
    $variationNextIds = [];
    $cantidaAtri = round(count($attributeSets)/2);
    @endphp
    <div class="row">
        <div class="col-md-6">
            <table class="table table-striped">
                <tbody>
                    @foreach($attributeSets as $index => $set)
                    @if($index < $cantidaAtri)

                        @if (!$loop->first)
                        @php
                        $variationInfo = $productVariationsInfo->where('attribute_set_id', $set->id)->whereIn('variation_id', $variationNextIds);
                        @endphp
                        @endif
                        @include(Theme::getThemeNamespace(). '::views.ecommerce.attributes._layouts.text2', compact('selected'))
                        @php
                        [$variationNextIds] = handle_next_attributes_in_product(
                        $attributes->where('attribute_set_id', $set->id),
                        $productVariationsInfo,
                        $set->id,
                        $selected->pluck('id')->toArray(),
                        $loop->index,
                        $variationNextIds);
                        @endphp

                        @endif
                        @endforeach
                </tbody>
            </table>
        </div>
        <div class="col-md-6">
            <table class="table table-striped">
                <tbody>
                    @foreach($attributeSets as $index => $set)
                    @if($index > $cantidaAtri)

                    @if (!$loop->first)
                    @php
                    $variationInfo = $productVariationsInfo->where('attribute_set_id', $set->id)->whereIn('variation_id', $variationNextIds);
                    @endphp
                    @endif
                    @include(Theme::getThemeNamespace(). '::views.ecommerce.attributes._layouts.text2', compact('selected'))
                    @php
                    [$variationNextIds] = handle_next_attributes_in_product(
                    $attributes->where('attribute_set_id', $set->id),
                    $productVariationsInfo,
                    $set->id,
                    $selected->pluck('id')->toArray(),
                    $loop->index,
                    $variationNextIds);
                    @endphp

                    @endif
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>