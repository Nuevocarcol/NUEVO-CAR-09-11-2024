    <footer class="footer_dark">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="widget">
                            @if (theme_option('logo_footer') || theme_option('logo'))
                                <div class="footer_logo">
                                    <a href="{{ route('public.single') }}">
                                        <img src="{{ RvMedia::getImageUrl(theme_option('logo_footer') ? theme_option('logo_footer') : theme_option('logo')) }}" alt="{{ theme_option('site_title') }}"  loading="lazy" />
                                    </a>
                                </div>
                            @endif
                            <p>{{ theme_option('about-us') }}</p>
                        </div>
                        @if (theme_option('social_links'))
                            <div class="widget">
                                <ul class="social_icons social_white">
                                    @foreach(json_decode(theme_option('social_links'), true) as $socialLink)
                                        @if (count($socialLink) == 4)
                                            <li>
                                                <a href="{{ $socialLink[2]['value'] }}"
                                                   title="{{ $socialLink[0]['value'] }}" style="background-color: {{ $socialLink[3]['value'] }}; border: 1px solid {{ $socialLink[3]['value'] }};" target="_blank">
                                                    <i class="{{ $socialLink[1]['value'] }}"></i>
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    </div>
                    {!! dynamic_sidebar('footer_sidebar') !!}
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="widget">
                            <h3 class="widget_title">{{ __('Contactanos') }}</h3>
                            <ul class="contact_info contact_info_light">
                                
                                    <li>
                                       <a href="mailto:Soporte@nuevocar.com">Soporte@nuevocar.com</a>
                                    </li>
                                
                                @if (theme_option('email'))
                                    <li>
                                        <i class="ti-email"></i>
                                        <a href="mailto:{{ theme_option('email') }}">{{ theme_option('email') }}</a>
                                    </li>
                                @endif
                                @if (theme_option('hotline'))
                                    <li>
                                        <i class="ti-mobile"></i>
                                        <p>{{ theme_option('hotline') }}</p>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <!---->
        <div class="bottom_footer border-top-tran">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p class="mb-md-0 text-center text-md-left">{{ theme_option('copyright') }}</p>
                    </div>
                    <div class="col-md-1 offset-md-3">
                        <p>Visitas:<span id="contador">Cargando...</span></p>
                        <style>
                            @font-face {
                                font-family: LCD;
                                font-weight: 100;
                                src: local(※), url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/383755/lcd-n___-webfont.woff) format("woff");
                            }
                            #contador {
                                font-size: 2em;
                                font-family: LCD;
                                margin-top: 15px;
                                margin-bottom: 28px;
                                color: #fff;
                            }
                        </style>
                        <script>
                            // Función para obtener una cookie por nombre
                            function getCookie(nombre) {
                                let cookies = document.cookie.split("; ");
                                for (let i = 0; i < cookies.length; i++) {
                                    let [clave, valor] = cookies[i].split("=");
                                    if (clave === nombre) return decodeURIComponent(valor);
                                }
                                return null;
                            }

                            // Función para establecer una cookie con duración de 10 años
                            function setCookie(nombre, valor, dias) {
                                let fecha = new Date();
                                fecha.setTime(fecha.getTime() + (dias * 24 * 60 * 60 * 1000)); // Expira en X días
                                document.cookie = `${nombre}=${encodeURIComponent(valor)}; expires=${fecha.toUTCString()}; path=/`;
                            }

                            // Obtener el contador desde la cookie o inicializar en 0
                            let visitas = getCookie("contadorVisitas");
                            visitas = visitas ? parseInt(visitas) : 120;

                            // Función para actualizar el contador
                            function actualizarContador() {
                                let incremento = Math.floor(Math.random() * 20) + 1; // Número aleatorio entre 1 y 20
                                visitas += incremento;
                                setCookie("contadorVisitas", visitas, 3650); // Guardar por 10 años
                                document.getElementById("contador").innerText = visitas;
                            }

                            // Mostrar el contador actual al cargar la página
                            document.getElementById("contador").innerText = visitas;

                            // Verificar si han pasado 10 minutos desde la última actualización
                            let ultimaActualizacion = getCookie("ultimaActualizacion");
                            let ahora = Date.now();

                            if (!ultimaActualizacion || (ahora - parseInt(ultimaActualizacion)) >= 600000) { // 10 minutos
                                actualizarContador();
                                setCookie("ultimaActualizacion", ahora, 3650); // Guardar por 10 años
                            }

                            // Refrescar cada 10 minutos sin recargar la página
                            setInterval(() => {
                                actualizarContador();
                                setCookie("ultimaActualizacion", Date.now(), 3650);
                            }, 600000);

                        </script>
                    </div>
                    <div class="col-md-6">
                        <ul class="footer_payment text-center text-lg-right">
                            @foreach(json_decode(theme_option('payment_methods', []), true) as $method)
                                @if (!empty($method))
                                    <li><img src="{{ RvMedia::getImageUrl($method) }}" alt="payment method" loading="lazy" /></li>
                                @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

     @if (is_plugin_active('ecommerce') && EcommerceHelper::isCartEnabled())
         <div id="remove-item-modal" class="modal" tabindex="-1" role="dialog">
             <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title">{{ __('Warning') }}</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <p>{{ __('Are you sure you want to remove this product from cart?') }}</p>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-fill-out" data-dismiss="modal">{{ __('Cancel') }}</button>
                         <button type="button" class="btn btn-fill-line confirm-remove-item-cart">{{ __('Yes, remove it!') }}</button>
                     </div>
                 </div>
             </div>
         </div>
     @endif

    <a href="#" class="scrollup" style="display: none;" title="back to top"><i class="ion-ios-arrow-up"></i></a>

    <script>
        window.trans = {
            "No reviews!": "{{ __('No reviews!') }}",
            "Days": "{{ __('Days') }}",
            "Hours": "{{ __('Hours') }}",
            "Minutes": "{{ __('Minutes') }}",
            "Seconds": "{{ __('Seconds') }}",
        };

        window.siteUrl = "{{ route('public.index') }}";
    </script>

    {!! Theme::footer() !!}

    </body>
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P3KJ5HGB"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
</html>
