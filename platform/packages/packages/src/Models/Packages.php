<?php

namespace Botble\Packages\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

/**
 * @method static \Botble\Base\Models\BaseQueryBuilder<static> query()
 */
class Packages extends BaseModel
{
    protected $table = 'nc_packages';

    protected $fillable = [
        'name',
        'limit_publications',
        'time_publication',
        'metadata',
        'price',
        'whosale_price',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'name' => SafeContent::class,
    ];
}
