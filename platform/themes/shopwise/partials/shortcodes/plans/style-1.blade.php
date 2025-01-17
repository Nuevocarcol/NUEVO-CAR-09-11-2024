<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Planes de Suscripción</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .pricing-card {
            background-color: #2c3e50;
            color: white;
            border-radius: 10px;
            text-align: center;
            padding: 30px;
            margin: 15px;
        }
    </style>
</head>
<body>

  <div class="container">
    <div class="row">
      @foreach($planes as $plan)
        <div class="col-md-3">
           <h3>{{$plan->name}}</h3>
          <div class="pricing-card">
            <h3>{{ $plan->plan }}</h3>
            <div class="price">${{ number_format($plan->precio, 0) }}</div>
            <ul>
              {!! $plan->info_plan !!}
            </ul>
          </div>
        </div>
      @endforeach
    </div>
  </div>

</body>
</html>
