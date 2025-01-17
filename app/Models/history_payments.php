<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class history_payments extends Model
{
    use HasFactory;
    protected $fillable=['userId','labelId','price','state'];
    // Desactiva autoincremento, ya que UUID no usa ID incremental
    public $incrementing = false;

    // Si estás usando un UUID como clave primaria, indica el tipo de clave
    protected $keyType = 'string';

    // Evento que genera el UUID automáticamente
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            if (empty($model->{$model->getKeyName()})) {
                $model->{$model->getKeyName()} = (string) Str::uuid();
            }
        });
    }
}
