@extends('core/base::layouts.master')
<!--
    Se encarga de iterar cada uno de los concesionarios disponibles en el sistema, teniendo en cuenta que
    estos estén configurado o habilitados en Admin.
-->
@section('name')
    <div class="container">
        <h1>Concesionarios Oficiales en NuevoCar</h1>
        <div class="row">
            @foreach ($concesionarios as $concesionario)
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img src="{{ $concesionario->image_url }}" class="card-img-top" alt="{{ $concesionario->nombre }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $concesionario->nombre }}</h5>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
