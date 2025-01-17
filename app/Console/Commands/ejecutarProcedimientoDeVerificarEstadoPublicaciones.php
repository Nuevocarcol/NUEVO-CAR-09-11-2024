<?php

namespace App\Console\Commands;
use Illuminate\Support\Facades\DB;

use Illuminate\Console\Command;

class ejecutarProcedimientoDeVerificarEstadoPublicaciones extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'procedimiento:verificar_estado_publicaciones';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    public function __construct(){
        parent::__construct();
    }

    /**
     * Execute the console command.
     */
    public function handle()
    {
        DB::statement('CALL validarTiempoPublicacionProductos');
        $this->info('Se ha actualizado el registro de productos exitosamente');
    }
}
