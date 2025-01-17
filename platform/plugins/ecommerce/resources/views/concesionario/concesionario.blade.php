@extends('core/acl::layouts.guest')
@section('content')
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-title">
                    <h1>{{ Theme::get('pageName') }}</h1>
                </div>
            </div>
            <div class="col-md-6">
                {!! Theme::partial('breadcrumbs') !!}
            </div>
        </div>
    </div>
</div> 
    <div class="container">
        <h1>Registro de Concesionarios</h1>
        <form action="" method="POST">
            @csrf
            <div class="form-group">
                <label for="city_id">Ciudad</label>
                <select id="city_id" name="city_id" class="form-control" required>
                    <option value="">Seleccione una ciudad</option>
                    
                </select>
            </div>
            <div class="form-group">
                <label for="name">Nombre del Concesionario</label>
                <input type="text" id="name" name="name" class="form-control" placeholder="Ingrese el nombre" required>
            </div>
            <div class="form-group">
                <label for="nit">NIT</label>
                <input type="text" id="nit" name="nit" class="form-control" placeholder="Ingrese el NIT" required>
            </div>
            <div class="form-group">
                <label for="address">Dirección</label>
                <input type="text" id="address" name="address" class="form-control" placeholder="Ingrese la dirección" required>
            </div>
            <div class="form-group">
                <label for="phone">Teléfono</label>
                <input type="text" id="phone" name="phone" class="form-control" placeholder="Ingrese el teléfono" required>
            </div>
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
    </div>
    @endsection
