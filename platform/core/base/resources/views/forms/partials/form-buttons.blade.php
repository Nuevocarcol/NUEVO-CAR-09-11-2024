@php

    do_action(BASE_ACTION_FORM_ACTIONS, 'default');

@endphp
<div class="btn-list">
    <x-core::button type="submitter" value="apply" name="save" color="primary" icon="ti ti-device-floppy"
        class="show-modal-btn">
        {{ trans('core/base::forms.save_and_continue') }}
    </x-core::button>
    @if (!isset($onlySave) || !$onlySave)
        <x-core::button type="submit" name="submitter" value="save" :icon="$saveIcon ?? 'ti ti-transfer-in'" class="show-modal-btn">
            Guardar
        </x-core::button>
    @endif
</div>
