<x-core::card>
    <div class="page page-center" style="min-height: calc(100vh - 25rem)">
        <div class="container container-tight py-4">
            <div class="empty">
                <div class="empty-img">
                    <p>Poner Imagen</p>
                </div>
                <p class="empty-title">Muestra tu auto al mundo y recibe ofertas increíbles.</p>
                <p class="empty-subtitle text-secondary">
                    Administra tus Publicaciones desde cualquier Dispositivo.</br>
                    Recuerda que son maximo 20 imagenes o tu publicacion se dara de baja.
                </p>
                @if (isset($actionUrl) && isset($actionLabel))
                    <div class="empty-action">
                        <x-core::button
                            color="primary"
                            tag="a"
                            :href="$actionUrl"
                        >
                           Crea una Nueva Publicacion
                        </x-core::button>

                        {!! $extraButtons ?? '' !!}
                    </div>
                @endif

                {!! $extra ?? '' !!}
            </div>
        </div>
    </div>
</x-core::card>
