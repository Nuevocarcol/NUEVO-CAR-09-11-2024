{!! Theme::partial('header') !!}

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
        <form action="" method="POST">
            @csrf
            <div class="container">
  <div class="row justify-content-center auth-card card ">
    <div class="col">
    <select id="city_id" name="city_id" class="form-control" required>
            <option value="">{{ __('Select city...') }}</option>
                @foreach (EcommerceHelper::getAvailableCitiesByState(10) as $cityId => $cityName)
                    <option
                        value="{{ $cityId }}">{{ $cityName }}</option>
                @endforeach
        </select>
        <div class="form-group">
          <label>Nombre del Concesionario</label>
          <input type="text" class="form-control">
      </div>       
      <div class="form-group">
          <label>Nit</label>
          <input type="Number" class="form-control">
      </div>
      <div class="form-group">
          <label>Dirección</label>
          <input type="text" class="form-control">
      </div>
      <div class="form-group">
          <label>Celular</label>
          <input type="text" class="form-control">
      </div>
        <button type="submit" class="btn btn-success">Enviar</button>
    </div>
  </div>
</div>
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
    </div>



{!! Theme::partial('footer') !!}
