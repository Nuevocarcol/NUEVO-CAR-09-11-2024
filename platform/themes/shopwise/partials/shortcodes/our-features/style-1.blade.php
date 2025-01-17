<div class="section">
    <div class="container">
        <div class="row no-gutters">
            @for ($i = 1; $i <= $shortcode->column; $i++)
                <div class="col-md-{!! 12 / $shortcode->column !!}">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="{!! BaseHelper::clean($shortcode->{'icon' . $i}) !!}"></i>
                        </div>
                        <div class="icon_box_content">
                            <p class="icon_box_title">{!! BaseHelper::clean($shortcode->{'title' . $i}) !!}</p>
                            @if ($shortcode->{'description' . $i})
                                <p>{!! BaseHelper::clean($shortcode->{'description' . $i}) !!}</p>
                            @endif
                            @if ($shortcode->{'subtitle' . $i})
                                <p>{!! BaseHelper::clean($shortcode->{'subtitle' . $i}) !!}</p>
                            @endif
                        </div>
                    </div>
                </div>
            @endfor
        </div>
    </div>
</div>
