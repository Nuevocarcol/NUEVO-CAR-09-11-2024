<?php

return [
    [
        'name' => 'Packages',
        'flag' => 'packages.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'packages.create',
        'parent_flag' => 'packages.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'packages.edit',
        'parent_flag' => 'packages.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'packages.destroy',
        'parent_flag' => 'packages.index',
    ],
];
