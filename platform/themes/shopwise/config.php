<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
    */

    'events' => [

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme) {
            $version = get_cms_version();

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('animate', 'css/animate.css');
            $theme->asset()->usePath()->add('bootstrap-css', 'plugins/bootstrap/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('ionicons', 'css/ionicons.min.css');
            $theme->asset()->usePath()->add('themify-icons', 'css/themify-icons.css');
            $theme->asset()->usePath()->add('linearicons', 'css/linearicons.css');
            $theme->asset()->usePath()->add('flaticon', 'css/flaticon.css');
            $theme->asset()->usePath()->add('simple-line-icons', 'css/simple-line-icons.css');
            $theme->asset()->usePath()->add('owl.carousel', 'plugins/owl-carousel/css/owl.carousel.min.css');
            $theme->asset()->usePath()->add('owl.theme', 'plugins/owl-carousel/css/owl.theme.css');
            $theme->asset()->usePath()->add('owl.theme.default', 'plugins/owl-carousel/css/owl.theme.default.min.css');
            $theme->asset()->usePath()->add('slick-theme-css', 'plugins/slick/slick-theme.css');
            $theme->asset()->usePath()->add('slick-css', 'plugins/slick/slick.css');
            $theme->asset()->usePath()->add('magnific-popup-css', 'css/magnific-popup.css');
            $theme->asset()->usePath()->add('style', 'css/style.css', [], [], $version);

            if (BaseHelper::isRtlEnabled()) {
                $theme->asset()->usePath()->add('rtl-style', 'css/rtl-style.css', [], [], $version);
            }

            $theme->asset()->container('header')->usePath()->add('jquery', 'js/jquery-3.6.0.min.js');
            $theme->asset()->container('footer')->usePath()->add('popper', 'js/popper.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('bootstrap-js', 'plugins/bootstrap/js/bootstrap.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('magnific-popup-js', 'js/magnific-popup.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('waypoints', 'js/waypoints.min.js', ['jquery'], [], '4.0.1');
            $theme->asset()->container('footer')->usePath()->add('slick-js', 'plugins/slick/slick.min.js');
            $theme->asset()->container('footer')->usePath()->add('carousel-js', 'plugins/owl-carousel/js/owl.carousel.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('elevatezoom-js', 'js/jquery.elevatezoom.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('countdown', 'js/jquery.countdown.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('scripts', 'js/scripts.js', ['jquery', 'jquery-ui-js'], [], $version);
            $theme->asset()->container('footer')->usePath()->add('backend-js', 'js/backend.js', ['jquery', 'jquery-ui-js'], [], $version);

            if (function_exists('shortcode')) {
                $theme->composer([
                    'page',
                    'post',
                    'ecommerce.product',
                    'ecommerce.products',
                    'ecommerce.product-category',
                    'ecommerce.product-tag',
                    'ecommerce.brand',
                    'ecommerce.search',
                    'ecommerce.cart',
                ], function (View $view) {
                    $view->withShortcodes();
                });
            }

            app()->booted(function () use ($theme) {
                $theme->asset()->remove('language-css');
                $theme->asset()->remove('language-public-js');
            });
        },
    ],
];
