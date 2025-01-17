<?php

namespace Botble\Packages\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class PackagesRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:220'],
            'limit_publications' => ['required', 'string'],
            'time_publication' => ['required', 'string'],
            'metadata' => ['required', 'string'],
            'price' => ['required', 'string'],
            'whosale_price' => ['required', 'string'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
