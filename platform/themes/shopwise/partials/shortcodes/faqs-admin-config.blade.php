<div class="mb-3">
    <label class="form-label">{{ __('Category') }}</label>
    {!! Form::customSelect('category_id', ['' => __('All')] + $categories, Arr::get($attributes, 'category_id')) !!}
</div>
