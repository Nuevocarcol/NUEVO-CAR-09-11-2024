<?php
use Botble\SimpleSlider\Models;
use Botble\SimpleSlider\Models\SimpleSlider;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;
if (! function_exists('get_publications')) {
    function get_publications($id, int $limit = 8, array $with = ['slugable'], array $withCount = []):?SimpleSlider
    {
        return SimpleSlider::query()
            ->where('id',$id)

            ->orderByDesc('created_at')
            ->withCount($withCount)
            ->with('sliderItems')
            ->take($limit)
            ->first();

        //dd($id);

    }
}
