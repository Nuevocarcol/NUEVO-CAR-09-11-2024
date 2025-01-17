<div class="user-avatars-slider">
    @foreach($users as $user)
        <div class="slide">
            <img src="{{ $user->avatar }}" alt="{{ $user->name }}" class="avatar">
            <p>{{ $user->name }}</p>
        </div>
    @endforeach
</div>

@section('scripts')
<script type="text/javascript">
    $(document).ready(function(){
        $('.user-avatars-slider').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            dots: true,
            arrows: true,
        });
    });
</script>
@endsection

<style>
    .user-avatars-slider .slide {
        text-align: center;
    }
    .user-avatars-slider .avatar {
        width: 100px;
        height: 100px;
        border-radius: 50%;
    }
</style>
