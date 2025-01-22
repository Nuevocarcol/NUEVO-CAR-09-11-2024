<style>
    .img_logo img {
        width: 100%;
        height: 100%; /* Reducido de 400px a 200px para evitar alargamiento */
        object-fit: contain; /* Cambiado de 'cover' a 'contain' para mantener proporción */
    }

    .client_logo .item {
        margin: 0 10px; /* Espacio entre las imágenes */
    }

    .img_logo {
        width: 100%;
        overflow: hidden; /* Oculta cualquier desbordamiento */
        height: 400px!important; /* Ajusta este valor según tus necesidades */
    }
</style>

<div class="section pt-0 small_pb">
    <div class="container">
        <div class="heading_tab_header">
            <div class="heading_s2">
                <h2 class="h4 text-center">{!! BaseHelper::clean($shortcode->title) !!}</h2>
            </div>
        </div>
        <div class="col-12 ">
            <div class="carousel_slider owl-carousel owl-theme nav_style3"
                 data-dots="false" data-nav="true" data-margin="20" data-loop="true" data-autoplay="true"
                 data-responsive='{"0":{"items": "2"}, "768":{"items": "2"}, "992":{"items": "3"}, "1200":{"items": "3"}}'>
                @if (!empty($publications?->sliderItems))
                @foreach($publications->sliderItems as $publications)

                    <div class="item">
                        <div class="img_logo">
                            @if ($publications->website)
                                <a href="{{ $publications->website }}">
                                    <img  class="img-fluid" src="{{ RvMedia::getImageUrl($publications->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{                                             $publications->title }}" loading="lazy"/>
                                </a>
                            @else
                                <img class="img-fluid" src="{{ RvMedia::getImageUrl($publications->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{                                         $publications->title}}" loading="lazy"/>
                            @endif
                        </div>
                    </div>
                @endforeach
                 @else
                    <p class="text-center">No hay publicaciones disponibles.</p>
                @endif
                
            </div>
        </div>
    </div>
</div>
