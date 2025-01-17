<?php

return [
    [
        'name' => 'Concesionarios',
        'flag' => 'concesionarios.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'concesionarios.create',
        'parent_flag' => 'concesionarios.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'concesionarios.edit',
        'parent_flag' => 'concesionarios.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'concesionarios.destroy',
        'parent_flag' => 'concesionarios.index',
    ],
];
