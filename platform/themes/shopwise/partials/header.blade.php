<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
    <head>
        <meta name="google-site-verification" content="Hzvq0fOH8yOrSQOs9JZ2YJN5VQGjA8f9GQezf8RsUiA" />
        <meta name="google-site-verification" content="E6_3JXcjeK-Lf0mx_Ym3UsHTDQcdzbDONffDthrZxtc" />
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-9REMCBQM68"></script> 
        <script>
            window.onload = function() {
                var preloader = document.getElementById('preloader2');
                setTimeout(function() {
                    preloader.style.display = 'none';
                }, 3000); // Oculta el preloader después de 2 segundos
                };
        </script>
        {!! Theme::header() !!}
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P3KJ5HGB');
        window.dataLayer = window.dataLayer || []; 
        function gtag(){
        dataLayer.push(arguments);
        } 
        gtag('js', new Date()); 
        gtag('config', 'G-9REMCBQM68'); 
        </script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        
        <meta name="description" content="Compra y venta de vehículos en Colombia, carros usados, autos nuevos, SUV económicos, vehículos de segunda mano.">
        <meta name="keywords" content="compra de vehículos, venta de autos usados, carros nuevos, SUV económicos, vehículos de segunda mano">
        <title>Compra y Venta de Vehículos en Colombia - Nuevocar</title>

        {!! Theme::typography()->renderCssVariables() !!}

        <style>
            :root {
                --color-1st: {{ theme_option('primary_color', '#FF324D') }};
                --primary-color: {{ theme_option('primary_color', '#FF324D') }};
                --color-2nd: {{ theme_option('secondary_color', '#1D2224') }};
                --secondary-color: {{ theme_option('secondary_color', '#1D2224') }};
            }
            #preloader {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background-color: #ededed; /* Fondo del preloader */
                display: inline-grid;
                justify-content: center;
                align-items: center;
                text-align: center;
                font-size: 2rem;
                font-weight: bold;
                    }
                #preloader2 {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background-color: #ededed; /* Fondo del preloader */
                display: inline-grid;
                justify-content: center;
                align-items: center;
                text-align: center;
                font-size: 2rem;
                font-weight: bold;
                    }
            .loader-item {
                margin: 0 20px; /* Espaciado entre elementos */
                font-size: 24px;
                font-weight: bold;
                color: #333; /* Color del texto */
                }
            @keyframes spin {
                    0% { transform: rotate(0deg); }
                    100% { transform: rotate(360deg); }
                }
                /*******************\
                Loading Roller
                \*******************/
                @-webkit-keyframes lds-roller {
                0% {
                transform: rotate(0deg);
                }
                100% {
                transform: rotate(360deg);
                }
                }
                @keyframes lds-roller {
                0% {
                transform: rotate(0deg);
                }
                100% {
                transform: rotate(360deg);
                }
                }
                .lds-roller {
                position: relative;
                display: inline-block;
                height: 64px;
                width: 64px;
                }
                .lds-roller div {
                -webkit-animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
                        animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
                transform-origin: 32px 32px;
                }
                .lds-roller div:after {
                position: absolute;
                display: block;
                background: #00539f;
                border-radius: 50%;
                content: " ";
                margin: -3px 0 0 -3px;
                height: 6px;
                width: 6px;
                }
                .lds-roller div:nth-child(1) {
                -webkit-animation-delay: -0.036s;
                        animation-delay: -0.036s;
                }
                .lds-roller div:nth-child(1):after {
                top: 50px;
                left: 50px;
                }
                .lds-roller div:nth-child(2) {
                -webkit-animation-delay: -0.072s;
                        animation-delay: -0.072s;
                }
                .lds-roller div:nth-child(2):after {
                top: 54px;
                left: 45px;
                }
                .lds-roller div:nth-child(3) {
                -webkit-animation-delay: -0.108s;
                        animation-delay: -0.108s;
                }
                .lds-roller div:nth-child(3):after {
                top: 57px;
                left: 39px;
                }
                .lds-roller div:nth-child(4) {
                -webkit-animation-delay: -0.144s;
                        animation-delay: -0.144s;
                }
                .lds-roller div:nth-child(4):after {
                top: 58px;
                left: 32px;
                }
                .lds-roller div:nth-child(5) {
                -webkit-animation-delay: -0.18s;
                        animation-delay: -0.18s;
                }
                .lds-roller div:nth-child(5):after {
                top: 57px;
                left: 25px;
                }
                .lds-roller div:nth-child(6) {
                -webkit-animation-delay: -0.216s;
                        animation-delay: -0.216s;
                }
                .lds-roller div:nth-child(6):after {
                top: 54px;
                left: 19px;
                }
                .lds-roller div:nth-child(7) {
                -webkit-animation-delay: -0.252s;
                        animation-delay: -0.252s;
                }
                .lds-roller div:nth-child(7):after {
                top: 50px;
                left: 14px;
                }
                .lds-roller div:nth-child(8) {
                -webkit-animation-delay: -0.288s;
                        animation-delay: -0.288s;
                }
                .lds-roller div:nth-child(8):after {
                top: 45px;
                left: 10px;
                }  
                .copy-text {
                    position: relative;
                    padding: 5px;
                    background: #fff;
                    border: 1px solid #ddd;
                    border-radius: 10px;
                    display: flex;
                }
                .copy-text input.codigoDesc {
                    padding: 5px;
                    font-size: 12px;
                    color: #555;
                    border: none;
                }
                .copy-text button {
                    padding: 5px;
                    background: #5784f5;
                    color: #fff;
                    font-size: 18px;
                    border: none;
                    outline: none;
                    border-radius: 10px;
                    cursor: pointer;
                }
                .copy-text button:active {
                    background: #809ce2;
                }
                .copy-text button::before {
                    content: "Copied";
                    position: absolute;
                    top: 0px;
                    right: 30px;
                    background:rgba(92, 128, 220, 0.84);
                    padding: 8px 10px;
                    border-radius: 20px;
                    font-size: 15px;
                    display: none;
                }
                .copy-text button::after {
                    content: "";
                    position: absolute;
                    top: -20px;
                    right: 25px;
                    width: 10px;
                    height: 10px;
                    background:rgba(92, 128, 220, 0);
                    transform: rotate(45deg);
                    display: none;
                }
                .copy-text.active button::before,
                .copy-text.active button::after {
                    display: block;
                }
            .banner_section.shop_banner_slider .carousel-item {
                background-size: 1920px 500px!important;
                background-repeat: no-repeat!important;
                background-color:rgb(0, 0, 0)!important;
            }
            .banner_section.slide_wrap, .banner_section.slide_wrap .carousel-item {
                height: 30rem!important;
            }
            @media only screen and (max-width: 1199px) {
                .banner_section:not(.full_screen), .banner_section:not(.full_screen) .carousel-item {
                    height: 20rem!important;
                }
                .banner_section.shop_banner_slider .carousel-item {
                background-size: 1199px 20rem!important;
                }
            }
            @media only screen and (max-width: 991px) {
                .banner_section:not(.full_screen), .banner_section:not(.full_screen) .carousel-item {
                    height: 18rem!important;
                }
                .banner_section.shop_banner_slider .carousel-item {
                background-size: 991px 18rem!important;
                }
            }
            @media only screen and (max-width: 575px) {
            .banner_section:not(.full_screen), .banner_section:not(.full_screen) .carousel-item {
                height: 16rem!important;
                }
                .banner_section.shop_banner_slider .carousel-item {
                background-size: 575px 16rem!important;
                }
            }
                
            .flaticon-ghit {
                display: inline-block;
                width: 36px; /* Ajusta según el tamaño deseado */
                height: 36px; /* Ajusta según el tamaño deseado */
                background: url('../themes/shopwise/images/ghit.svg') no-repeat center center;
            }
            .icon-kubo {
                display: inline-block;
                width: 36px; /* Ajusta según el tamaño deseado */
                height: 36px; /* Ajusta según el tamaño deseado */
                background: url('../themes/shopwise/images/icon-kubo.png') no-repeat center center;
            }
        </style>        
    </head>
    
    <body {!! Theme::bodyAttributes() !!}>
    {!! apply_filters(THEME_FRONT_BODY, null) !!}
    
    <div id="alert-container"></div>
    @if (Request::is('/'))
    <div id="preloader2">
        <div class="loader-item">
            <div class="loader-item">Bienvenido a</div>
            <img height="150" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="Cargando...">
        <div class="loader-item">
            <div class="lds-roller">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div>Cargando...</div>
        </div>
     </div>
        <div class="loader-item">Colombia 
            {!! language_flag('co', 'Colombia', 30) !!}            
        </div>   
    </div>
    @endif

    @if (is_plugin_active('newsletter') && theme_option('enable_newsletter_popup', 'yes') === 'yes')
        <div data-session-domain="{{ config('session.domain') ?? request()->getHost() }}"></div>
        <div class="modal fade subscribe_popup" id="newsletter-modal" data-time="{{ (int)theme_option('newsletter_show_after_seconds', 10) * 1000 }}" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-label="Subscribe popup" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="ion-ios-close-empty"></i></span>
                        </button>
                        <div class="row no-gutters">
                            <div class="col-sm-5">
                                @if (theme_option('newsletter_image'))
                                    <div class="background_bg h-100" data-img-src="{{ RvMedia::getImageUrl(theme_option('newsletter_image')) }}"></div>
                                @endif
                            </div>
                            <div class="col-sm-7">
                                <div class="popup_content">
                                    <div class="popup-text">
                                        <div class="heading_s4">
                                            <h4>{{ __('Subscribe and Get 25% Discount!') }}</h4>
                                        </div>
                                        <p>{{ __('Subscribe to the newsletter to receive updates about new products.') }}</p>
                                    </div>
                                    {!!
                                        \Botble\Newsletter\Forms\Fronts\NewsletterForm::create()
                                            ->setFormInputClass('form-control rounded-0 mb-3')
                                            ->modify('email', 'email', [
                                                'attr' => ['placeholder' => __('Enter Your Email')],
                                            ])
                                            ->modify('submit', 'submit', [
                                                'attr' => [
                                                    'class' => 'btn btn-block text-uppercase rounded-0"',
                                                    'style' => 'background: #333; color: #fff;',
                                                ],
                                            ])
                                            ->renderForm()
                                    !!}
                                    <div class="chek-form text-left form-group">
                                        <div class="custome-checkbox">
                                            <input class="form-check-input" type="checkbox" name="dont_show_again" id="dont_show_again" value="">
                                            <label class="form-check-label" for="dont_show_again"><span>{{ __("Don't show this popup again!") }}</span></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <header class="header_wrap @if (Theme::get('transparentHeader')) dd_dark_skin transparent_header @endif">
        <div class="top-header d-none d-md-block">
            <div class="container">
                <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="d-flex align-items-center justify-content-center justify-content-md-start">
                                @if (is_plugin_active('language'))
                                    <div class="language-wrapper">
                                        {!! Theme::partial('language-switcher') !!}
                                    </div>
                                @endif
                                @if (is_plugin_active('ecommerce'))
                                    {{--}}@php $currencies = get_all_currencies(); @endphp
                                    @if (count($currencies) > 1)

                                         <div class="language-wrapper choose-currency mr-3">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle btn-select-language" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                    {{ get_application_currency()->title }}
                                                    <span class="language-caret"></span>
                                                </button>
                                                <ul class="dropdown-menu language_bar_chooser">
                                                    @foreach ($currencies as $currency)
                                                        <li>
                                                            <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id() == $currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>

                                    @endif{{--}}
                                @endif
                                @if (theme_option('hotline'))
                                    <ul class="contact_detail text-center text-lg-left">
                                        <li><i class="ti-mobile"></i><span>{{ theme_option('hotline') }}</span></li>
                                    </ul>
                                @endif
                            </div>
                        </div>
                    <div class="col-md-6">
                        <div class="d-flex align-items-center justify-content-center justify-content-md-end">
                            @if (is_plugin_active('ecommerce'))
                                <ul class="header_list">
                                    @if (EcommerceHelper::isCompareEnabled())
                                        <li><a href="{{ route('public.compare') }}"><i class="ti-control-shuffle"></i><span>{{ __('Compare') }}</span></a></li>
                                    @endif
                                    @if (!auth('customer')->check())
                                        <li><a href="{{ route('customer.login') }}"><i class="ti-user"></i><span>{{ __('Login') }}</span></a></li>
                                    @else
                                        <li><a href="{{ route('customer.overview') }}"><i class="ti-user"></i><span>{{ auth('customer')->user()->name }}</span></a></li>
                                        <li>                                        
                                        @if(EcommerceHelper::buscarDescuento(auth('customer')->user()->phone) !== null)
                                        <div class="copy-text">
                                            <input type="text" class="codigoDesc" readonly value="{{EcommerceHelper::buscarDescuento(auth('customer')->user()->phone)['code']}}" />
                                            <button><i class="ti ti-layers" style="margin-right: 0!important;"></i></button>
                                        </div>
                                        @endif
                                        <script>
                                            let copyText = document.querySelector(".copy-text");
                                                copyText.querySelector("button").addEventListener("click", function () {
                                                    let input = copyText.querySelector("input.codigoDesc");
                                                    input.select();
                                                    document.execCommand("copy");
                                                    copyText.classList.add("active");
                                                    window.getSelection().removeAllRanges();
                                                    setTimeout(function () {
                                                        copyText.classList.remove("active");
                                                    }, 2500);
                                                });
                                        </script>
                                        </li>
                                        <li><a href="{{ route('customer.logout') }}"><i class="ti-lock"></i><span>{{ __('Logout') }}</span></a></li>
                                    @endif
                                </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="middle-header dark_skin">
            <div class="container">
                <div class="nav_block">
                    <a class="navbar-brand" href="{{ route('public.index') }}">
                        <img class="logo_dark" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" loading="lazy" />
                    </a>
                    @if (theme_option('hotline'))
                        <div class="contact_phone order-md-last">
                            <i class="linearicons-phone-wave"></i>
                            <span>{{ theme_option('hotline') }}</span>
                        </div>
                    @endif
                    @if (is_plugin_active('ecommerce'))
                        <div class="product_search_form">
                            <form action="{{ route('public.products') }}" data-ajax-url="{{ route('public.ajax.search-products') }}" method="GET">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        {{--}}<div class="custom_select">
                                            <select name="categories[]" class="first_null product-category-select" aria-label="Product categories">
                                                <option value="">{{ __('All') }}</option>
                                                {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}
                                            </select>
                                        </div>
                                        {{--}}
                                    </div>
                                    <input class="form-control input-search-product" name="q" value="{{ BaseHelper::stringify(request()->query('q')) }}" placeholder="{{ __('Search Product') }}..." required  type="text">
                                    <button type="submit" class="search_btn" title="{{ __('Search') }}"><i class="linearicons-magnifier"></i></button>
                                </div>
                                <div class="panel--search-result"></div>
                            </form>
                        </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="bottom_header light_skin main_menu_uppercase @if (! Theme::get('transparentHeader')) bg_dark @endif @if (url()->current() === route('public.index')) mb-4 @endif">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-4">
                        @if (is_plugin_active('ecommerce'))
                            <div class="categories_wrap">
                                <button type="button" data-toggle="collapse" data-target="#navCatContent" aria-expanded="false" class="categories_btn">
                                    <i class="linearicons-menu"></i><span>{{ __('All Categories') }} </span>
                                </button>
                                @php
                                    $categories = ProductCategoryHelper::getProductCategoriesWithUrl();
                                @endphp
                                    <div id="navCatContent" class="@if (Theme::get('collapsingProductCategories')) nav_cat @endif navbar collapse">
                                        <ul>
                                            {!! Theme::partial('product-categories-dropdown', ['categories' => $categories]) !!}
                                        </ul>
                                    @if (count($categories) > 10)
                                        <div class="more_categories">{{ __('More Categories') }}</div>
                                    @endif
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="col-lg-9 col-md-8 col-sm-6 col-8">
                        @include(Theme::getThemeNamespace('partials.header-menu'))
                    </div>
                </div>
            </div>
        </div>

        @if (theme_option('enable_sticky_header', 'yes') == 'yes')
            <div class="bottom_header bottom_header_sticky light_skin main_menu_uppercase bg_dark fixed-top header_with_topbar d-none">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-4">
                            <a class="navbar-brand" href="{{ route('public.index') }}">
                                <img src="{{ RvMedia::getImageUrl(theme_option('logo_footer') ? theme_option('logo_footer') : theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" loading="lazy" />
                            </a>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-6 col-8">
                            @include(Theme::getThemeNamespace('partials.header-menu'))
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </header>
