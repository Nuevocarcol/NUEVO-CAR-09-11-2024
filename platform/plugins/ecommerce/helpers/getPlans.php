<?php

use Botble\Ecommerce\Models\ProductLabel;
use Botble\SimpleSlider\Models;

use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;
if (! function_exists('get_plans')) {
    function get_plans( int $limit = 8, array $with = ['slugable'], array $withCount = [])
    {
       return ProductLabel::query()
            ->orderByDesc('id')
            ->withCount($withCount)
            ->take($limit)
            ->get();


    }
}
