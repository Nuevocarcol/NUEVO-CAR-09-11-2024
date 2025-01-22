<style>
    .img_logo #pautaImg {
        width: 100%;
        height: 100%; /* Reducido de 400px a 200px para evitar alargamiento */
        margin-top: 4em !important;
        background-size: 1200px 300px !important; /* Cambiado de 'cover' a 'contain' para mantener proporción */
        background-repeat: no-repeat!important;
    }

    @media only screen and (max-width: 1199px) {
        .img_logo #pautaImg {
            background-size: 850px 300px!important;
        }
    }
            
    @media only screen and (max-width: 991px) {
        .img_logo #pautaImg {
            background-size: 700px 300px!important;
        }
    }
    @media only screen and (max-width: 575px) {
        .img_logo #pautaImg {
            background-size: 350px 200px!important;
        }
        .img_logo {
            height: 200px !important;
        }
    }
    @media only screen and (max-width: 450px) {
        .img_logo #pautaImg {
            background-size: 450px 100px!important;
        }
        .img_logo {
            height: 200px !important;
        }
        .client_logo .item {
            margin: 0!important; /* Espacio entre las imágenes */
            width: 100% !important;
        }
    }

    @media only screen and (max-width: 380px) {
        .img_logo #pautaImg {
            background-size: 380px 100px!important;
        }
        .img_logo {
            height: 200px !important;
        }
        .client_logo .item {
            margin: 0!important; /* Espacio entre las imágenes */
            width: 100% !important;
        }
    }
    @media only screen and (max-width: 320px) {
        .img_logo #pautaImg {
            background-size: 320px 100px!important;
        }
        .img_logo {
            height: 200px !important;
        }
        .client_logo .item {
            margin: 0!important; /* Espacio entre las imágenes */
            width: 100% !important;
        }
    }
    .client_logo .item {
        margin: 0 10px; /* Espacio entre las imágenes */
    }

    .img_logo {
        width: 100%;
        overflow: hidden; /* Oculta cualquier desbordamiento */
    }
</style>
<script>
    $(document).ready(function() {
        if(window.screen.width <= 450){
            $('.pautaContainer').removeClass('container');
            $('.pautacol').removeClass('col-12');
        }
    });    
</script>
<div class="section pt-0 small_pb" style="background: ghostwhite;">
    <div class="container pautaContainer">
        <div>
            <div class="heading_s2 text-center">
                <h2>{!! BaseHelper::clean($shortcode->title) !!}</h2>
            </div>
        </div>
        <div class="col-12 pautacol">
            <div class="client_logo carousel_slider owl-carousel owl-theme nav_style3"
                 data-dots="false" data-nav="true" data-margin="20" data-loop="true" data-autoplay="false" merge="true"
                 data-responsive='{"0":{"items": "1"}, "768":{"items": "1"}, "992":{"items": "1"}, "1200":{"items": "1"}}'>
                @if (!empty($publications?->sliderItems))
                @foreach($publications->sliderItems as $publications)

                    <div class="item" data-merge="6">
                        <div class="img_logo">
                        @if ($publications->link)
                            <a target="_blank" href="{{ $publications->link }}">
                                <div class="img-fluid" id="pautaImg" 
                                style="background: url({{ RvMedia::getImageUrl($publications->image, null, false, RvMedia::getDefaultImage()) }})"></div>
                            </a> 
                        @else
                            <div class="img-fluid" id="pautaImg" 
                                style="background: url({{ RvMedia::getImageUrl($publications->image, null, false, RvMedia::getDefaultImage()) }})"></div>
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
