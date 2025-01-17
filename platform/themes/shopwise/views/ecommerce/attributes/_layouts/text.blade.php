<div class="text-swatches-wrapper attribute-swatches-wrapper attribute-swatches-wrapper form-group product__attribute product__color" data-type="text">
</div>
<div class="container">
    <div class="row">
        <div class="col-sm">
        <div>
            <label class="attribute-name">{{ $set->title }}</label>
        </div>
        </div>
        <div class="col-sm">
        @foreach($attributes->where('attribute_set_id', $set->id) as $attribute)
            <div>
                <p>{{ $attribute->title }}</p>
            </div>
        @endforeach
        </div>
    </div>
</div>
