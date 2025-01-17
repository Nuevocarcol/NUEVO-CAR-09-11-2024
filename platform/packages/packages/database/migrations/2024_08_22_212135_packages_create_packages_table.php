<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('packages')) {
            Schema::create('packages', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('packages_translations')) {
            Schema::create('packages_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('packages_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'packages_id'], 'packages_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('packages');
        Schema::dropIfExists('packages_translations');
    }
};
