<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('packagemanages')) {
            Schema::create('packagemanages', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('packagemanages_translations')) {
            Schema::create('packagemanages_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('packagemanages_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'packagemanages_id'], 'packagemanages_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('packagemanages');
        Schema::dropIfExists('packagemanages_translations');
    }
};
