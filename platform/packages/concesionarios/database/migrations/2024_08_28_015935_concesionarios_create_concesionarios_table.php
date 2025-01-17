<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('concesionarios')) {
            Schema::create('concesionarios', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->string('message',50);
                $table->string('url',300);
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('concesionarios_translations')) {
            Schema::create('concesionarios_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('concesionarios_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'concesionarios_id'], 'concesionarios_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('concesionarios');
        Schema::dropIfExists('concesionarios_translations');
    }
};
