<?php

namespace Botble\Concesionarios\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

/**
 * @method static \Botble\Base\Models\BaseQueryBuilder<static> query()
 */
class Concesionarios extends BaseModel
{
    protected $table = 'concesionarios';

    protected $fillable = [
        'name',
        'status',
        'activado',
        'url'
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'name' => SafeContent::class,
    ];
}
