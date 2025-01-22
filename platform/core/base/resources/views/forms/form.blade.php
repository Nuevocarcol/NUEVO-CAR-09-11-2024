@extends($layout ?? BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    @if ($showStart)
        {!! Form::open(Arr::except($formOptions, ['template'])) !!}
    @endif

    @php

        do_action(BASE_ACTION_TOP_FORM_CONTENT_NOTIFICATION, request(), $form->getModel());
        ///admin/ecommerce/products/create

        use Illuminate\Support\Str;

        $requestUri = $form->getRequest()->getRequestUri(); // Obtiene la requestUri actual
        $antiguioRequest = $form->getRequest();
        $isEditPage = Str::contains($requestUri, '/admin/ecommerce/products/edit/');
        $isCreatePage = Str::contains($requestUri, '/admin/ecommerce/products/create');
        // Verificar que el objeto request no sea nulo
        $req = $form->getRequest();
        if ($req !== null) {
            // Modificar pathInfo y requestUri
            $req->server->set('REQUEST_URI', ''); // Deja el requestUri en blanco
            $req->server->set('PATH_INFO', ''); // Deja el pathInfo en blanco
        }

    @endphp

    @if ($isCreatePage == false && $isEditPage == false)

        <div class="row">
            <div class="gap-3 col-md-9">
                {!! $form->getActionButtons() !!}
                @if ($showFields && $form->hasMainFields())
                    <x-core::card class="mb-3">
                        <x-core::card.body>

                            <div class="{{ $form->getWrapperClass() }}">
                                {{ $form->getOpenWrapperFormColumns() }}

                                @foreach ($fields as $key => $field)
                                    @if ($field->getName() == $form->getBreakFieldPoint())
                                    @break

                                @else
                                    @unset($fields[$key])
                                @endif

                                @continue(in_array($field->getName(), $exclude))

                                {!! $field->render() !!}
                                @if (defined('BASE_FILTER_SLUG_AREA') && $field->getName() == SlugHelper::getColumnNameToGenerateSlug($form->getModel()))
                                    {!! apply_filters(BASE_FILTER_SLUG_AREA, null, $form->getModel()) !!}
                                @endif
                            @endforeach

                            {{ $form->getCloseWrapperFormColumns() }}
                        </div>
                    </x-core::card.body>
                </x-core::card>
            @endif

            @foreach ($form->getMetaBoxes() as $key => $metaBox)
                {!! $form->getMetaBox($key) !!}
            @endforeach

        </div>


        {{-- se ha suspendido para pasar este codigo a javascript que controle el idLabelSelected
        @if ($form->getModel() && $form->getModel()->id)
            {!! $form->getActionButtons() !!}
        @else
        <button type="button" class="btn btn-primary">
            <i class="bi bi-credit-card"></i> Pagar
          </button>
        @endif --}}

        <div class="col-md-3 gap-3 d-flex flex-column-reverse flex-md-column mb-md-0 mb-5">
            {!! $form->getActionButtons() !!}

            @php
                do_action(BASE_ACTION_META_BOXES, 'top', $form->getModel());
            @endphp

            @foreach ($fields as $field)
                @if (!in_array($field->getName(), $exclude))
                    @if ($field->getType() === 'hidden')
                        {!! $field->render() !!}
                    @else
                        <x-core::card class="meta-boxes">
                            <x-core::card.header>
                                <x-core::card.title>
                                    {!! Form::customLabel($field->getName(), $field->getOption('label'), $field->getOption('label_attr')) !!}
                                </x-core::card.title>
                            </x-core::card.header>

                            @php
                                $bodyAttrs = Arr::get($field->getOptions(), 'card-body-attrs', []);

                                if (! Arr::has($bodyAttrs, 'class')) {
                                    $bodyAttrs['class'] = '';
                                }

                                $bodyAttrs['class'] .= ' card-body';
                            @endphp

                            <div {!! Html::attributes($bodyAttrs) !!}>
                                {!! $field->render([], in_array($field->getType(), ['radio', 'checkbox'])) !!}
                            </div>
                        </x-core::card>
                    @endif
                @endif
            @endforeach

            @php
                do_action(BASE_ACTION_META_BOXES, 'side', $form->getModel());
            @endphp
        </div>
    </div>



@elseif($isCreatePage == true || $isEditPage == true)
    @if ($showFields && $form->hasMainFields())
        <x-core::card class="mb-3">
            <x-core::card.body>
                <div class="progress" style="height: 30px;">
                    <div class="progress-bar" role="progressbar" style="width: 33%;" aria-valuenow="33" aria-valuemin="0"
                        aria-valuemax="100">Paso 1</div>
                </div>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="vehiculo-tab" data-bs-toggle="tab"
                            data-bs-target="#vehiculo" type="button" role="tab" aria-controls="vehiculo"
                            aria-selected="true">1. Vehículo</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contenido-tab" data-bs-toggle="tab" data-bs-target="#contenido"
                            type="button" role="tab" aria-controls="contenido" aria-selected="false">2.
                            Configuración de Vehiculo</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="valor-tab" data-bs-toggle="tab" data-bs-target="#valor"
                            type="button" role="tab" aria-controls="valor" aria-selected="false">3. Completar
                            Proceso</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="vehiculo" role="tabpanel"
                        aria-labelledby="vehiculo-tab">
                        <div class="row mt-3">
                            <div class="col-md-7 d-flex align-items-center" style="min-height: 100%;">
                                @if (isset($fields['images[]']))
                                    <div class="form-group mb-3 w-100">
                                        {!! $fields['images[]']->render() !!}
                                    </div>
                                @endif
                            </div>
                            <div class="col-md-5">
                                <div class="{{ $form->getWrapperClass() }}">
                                    {{ $form->getOpenWrapperFormColumns() }}
                                    @if (isset($fields['name']))
                                        {!! $fields['name']->render() !!}
                                    @endif
                                    @if (isset($fields['slug']))
                                        {!! $fields['slug']->render() !!}
                                    @endif
                                    @if (isset($fields['brand_id']))
                                        {!! $fields['brand_id']->render() !!}
                                    @endif
                                    @if (isset($fields['description']))
                                        {!! $fields['description']->render() !!}
                                    @endif

                                    {{ $form->getCloseWrapperFormColumns() }}
                                </div>
                            </div>
                        </div>
                        <div class="mt-3 text-end">
                            <button class="btn btn-secondary" type="button" onclick="nextStep(1)">Siguiente</button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="contenido" role="tabpanel" aria-labelledby="contenido-tab">
                        <div class="{{ $form->getWrapperClass() }} mt-3">
                            @if (isset($fields['image']))
                                {!! $fields['image']->render() !!}
                            @endif
                            @if (isset($fields['status']))
                                {!! $fields['status']->render() !!}
                            @endif
                            @foreach ($form->getMetaBoxes() as $key => $metaBox)
                                {!! $form->getMetaBox($key) !!}
                            @endforeach
                            @if (isset($fields['product_label']))
                                {!! $fields['product_label']->render() !!}
                            @endif
                            <hr>
                            <h3>Selecciona una Categoría para tu Vehiculo</h3>
                            @if (isset($fields['categories[]']))
                                {!! $fields['categories[]']->render() !!}
                            @endif
                            {{ $form->getCloseWrapperFormColumns() }}
                        </div>
                        <div class="mt-3 text-end">
                            <button class="btn btn-secondary" type="button" onclick="prevStep(1)">Anterior</button>
                            <button class="btn btn-primary" type="button" onclick="nextStep(2)">Siguiente</button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="valor" role="tabpanel" aria-labelledby="valor-tab">
                        <div class="{{ $form->getWrapperClass() }} mt-3">

                            {{ $form->getOpenWrapperFormColumns() }}

                            @if (isset($fields['is_featured']))
                                {!! $fields['is_featured']->render() !!}
                            @endif
                            <div class="container mt-5">
                                <h5>Detalles Paquete Visibilidad Publicación</h5>
                                <p id="productName">Detalles de Tu Plan: <span id="productNameValue"></span> </p>
                                <p id="productPrice">Precio: <span id="productPriceValue"></p>
                                <ul id="infoplan" style="text-decoration: none;"></ul>
                                @if(EcommerceHelper::validaConcesionario(auth()->id()) == null)
                                <input type="checkbox" name="chdescuento" id="chdescuento">
                                <label for="chdescuento">Codigo de descuento concesionario</label>
                                <div class="row">
                                    <div class="col-7">
                                        <input id="descuento" class="form-control" disabled name="descuento">
                                    </div>
                                    <div class="col-3">
                                        <a id="validaDes" class="btn btn-default btn-xs">Validar descuento</a>
                                    </div>
                                </div>
                                @endif
                                <hr></hr>                               
                                <div id="checkout-button">
                                    <!-- Aquí puedes agregar un botón de pago si lo necesitas -->
                                </div>
                                <!--container que muestra la url para pago con mercadopago -->
                                <div id="link-container">

                                </div>
                            </div>

                            {{ $form->getCloseWrapperFormColumns() }}
                        </div>
                        <div class="mt-3 text-end">
                            <button class="btn btn-secondary" type="button" onclick="prevStep(2)">Anterior</button>
                            <button class="btn btn-success" id="submit-information2" type="button" onclick="nextStep(3)">Finalizar</button>
                            <button class="btn btn-success" id="submit-information" type="submit" style="display:none;"
                                onclick="submitForm()">Finalizar</button>
                        </div>
                    </div>
                </div>
            </x-core::card.body>
        </x-core::card>

        <script>
            function nextStep(step) {
                event.preventDefault();
                let valido = false;
                switch(step){
                    case 1:
                        if(validarVacio('name', 'Nombre de la Publicación') && validarLista('brand_id', 'Marca')){
                            valido = true;
                        }
                        break;
                    case 2:
                        if(validarVacio('price', 'Precio') ){
                            valido = true;
                        }
                        break;
                    case 3:
                        if(this.precio == 0){
                            valido = true;
                            $('#submit-information').click();
                        } else {
                            toastr['error']('Realice su pago para guardar la publicacion');
                        }
                    default:
                        valido = false  
                }

                if(valido){
                    $('.nav-tabs .nav-link').eq(step).tab('show');
                    updateProgressBar(step + 1);
                }
            }


            function prevStep(step) {
                $('.nav-tabs .nav-link').eq(step - 1).tab('show');
                updateProgressBar(step);
            }

            function updateProgressBar(step) {
                var percent = (step / 3) * 100;
                $('.progress-bar').css('width', percent + '%').attr('aria-valuenow', percent).text('Paso ' + step);
            }

            function submitForm() {
                // Aquí puedes agregar la lógica para enviar el formulario
                //alert('Formulario enviado');
            }

            $('.nav-tabs .nav-link').on('shown.bs.tab', function(e) {
                var step = $(e.target).parent().index() + 1;
                updateProgressBar(step);
            });
            function validarVacio(id, name){
                if($(`#${id}`).val() != ""){
                    return Boolean(true);
                } else {
                    toastr.error(`El campo ${name} no puede esta vacío`);
                    return Boolean(false);
                }
            }
            function validarLista(id, name){
                let listaLlena = false;
                $(`#${id}`).find("option:selected").each(function(){
                    if($(this).val().trim() != ""){
                        listaLlena = Boolean(true);
                    } else {
                        toastr.error(`Seleccione una opcion del campo ${name}`);
                    }
                });
                return listaLlena;
            }
        </script>

        <script>
            let nombreProducto;
            let precio;
            let label_id;
            document.addEventListener('DOMContentLoaded', function() {
                $('#is_featured').prop('checked', true);
                const productLabelsField = document.getElementById('product_label');
                const btEditor = document.getElementById('description');
                let plan = 0;
                // Detectar cambio en el select
                productLabelsField.addEventListener('change', function() {
                    const selectedValue = productLabelsField.value; // Valor seleccionado
                    plan = selectedValue;
                    console.log('Selected label: ', selectedValue);
                    getButtonsByIdSelectedValue(selectedValue);
                    getPriceProducts(selectedValue);
                    // getNameLabelById(selectedValue);
                });
                const form = document.querySelector('form'); // Selecciona el formulario
                //dispara la funcion al recargar para obtener los campos para la pasarela
                productLabelsField.dispatchEvent(new Event('change'));
                $('#chdescuento').on("change", function(){
                    if ($(this).is(':checked')) {
                        $('#descuento').removeAttr('disabled');
                    } else {
                        $('#descuento').attr('disabled', true);
                        $('#descuento').val('');
                        getPriceProducts(plan);
                    }
                    
                });
                $('#validaDes').on('click', function(){
                    getPriceProducts(plan);
                });
                setTimeout(()=>{
                    $('.ck-placeholder').attr('data-placeholder','Escribe Aqui la descripcion de tu vehiculo, teniendo en cuenta la siguiente información:Kilometraje, Estado del Vehiculo, Estado de las llantas, Placa terminada par o impar');
                    const ckeditorHeader = document.querySelector('.ck-editor__top');
                    if (ckeditorHeader) {
                        // Oculta el header (barra de herramientas)
                        ckeditorHeader.style.display = 'none';
                    }
                    $('.btn-trigger-add-attribute').click();
                    let atributos = 4;
                    dataToSend = {
                                    'id' : true
                                }
                    fetch(`/admin/ecommerce/product-labels/get-atributo`,{
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
                        },
                        body: JSON.stringify(dataToSend)
                    })
                    .then(response => response.json())
                    .then(data => {
                        atributos = data - 2;
                        for(let i = 0; i <= atributos; i++){
                            $('.btn-trigger-add-attribute-item').click();
                            if(i === atributos){
                                $('.product-set-item-delete-action').css('display', 'none');
                            }
                        }
                    });
                    
                }, 3900);    
                setInterval(()=> {
                    $('.dataTable-custom-filter').hide();
                }, 2000);
                
                
               
            });

            function findPriceByIdLabelSelected(idSelectedValue) {
                const price = " {use Botble\Ecommerce\Models\ProductLabel; $price= ProductLabel::find('id'," + idSelectedValue +
                    ");$price->price;}"
            }

            function createElementAsLinkA(init_point) {
                const linkContainer = document.getElementById('link-container');
                const linkElement = document.createElement('a');
                linkElement.href = init_point;
                linkElement.innerText = "Pagar con Mercado Pago";
                linkElement.classList.add('btn', 'btn-primary');
            }

            function getButtonsByIdSelectedValue(idSelectedValue) {
                const formModelId = ("{!! $form->getModel() && $form->getModel()->id ? $form->getModel()->id : null !!}"); // PHP genera este valor
                console.log("selete", idSelectedValue);
                console.log("formmodel", formModelId);
                console.log("{$form}")
                this.label_id = idSelectedValue;
                if (idSelectedValue === "4") {
                    // Si el modelo existe y tiene un id, se muestran los botones de acción

                } else if (idSelectedValue != "4") {


                }
            }

            function getPriceProducts(idSelectedValue) {
                console.log("id", idSelectedValue)
                fetch(`/admin/ecommerce/product-labels/getprice/${idSelectedValue}`,{
                    headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json'
                        },
                })
                    .then(response => response.json())
                    .then(data => {
                        console.log(data);
                        if (data.price) {
                            // Actualizar el label con el precio
                            //document.getElementById('price_label').textContent = 'Precio: ' + data.price;
                            this.nombreProducto = data.price['name'];
                            if(this.descuento != undefined && this.descuento.value != ''){
                                let valorDescuento = 0;
                                dataToSend = {
                                    'id' : idSelectedValue,
                                    'code': $('#descuento').val()
                                }
                                fetch(`/admin/ecommerce/product-labels/descuento`,{
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
                                    },
                                    body: JSON.stringify(dataToSend)
                                })
                                .then(response => response.json())
                                .then(data2 => {
                                    data.price['price'] = data2;
                                    this.precio = data.price['price'];
                                    createPreference();
                                    document.getElementById('productPriceValue').textContent = `$${data.price['price']}` ||
                                    'Precio no disponible';
                                    })
                                .catch(error => console.error('Error en la petición:', error));
                            } else {
                                this.precio = data.price['price'];
                                createPreference();
                                document.getElementById('productPriceValue').textContent = `$${data.price['price']}` ||
                                    'Precio no disponible';
                                
                            }
                            document.getElementById('productNameValue').textContent = data.price['name']  ||
                                    'Nombre no disponible';
                            document.getElementById('infoplan').innerHTML = data.price['info_plan'] || 
                                    'Detalles no disponible'
                        } else if (data.error) {
                            // Mostrar error si no se encuentra el label
                            //document.getElementById('price_label').textContent = data.error;
                            console.log("error", data.error);
                            document.getElementById('productNameValue').textContent = 'Error al obtener nombre';
                            document.getElementById('productPriceValue').textContent = 'Error al obtener precio';
                        }
                    })
                    .catch(error => console.error('Error en la petición:', error));
            }

            function createPreference() {
                console.log("precio", this.precio, "nombre", this.nombreProducto)
                const dataToSend = {
                    label_id: this.label_id,
                    price: this.precio,
                    productName: this.nombreProducto
                }
                fetch(`/admin/ecommerce/product-labels/create-preference`, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json'
                        },
                        body: JSON.stringify(dataToSend)
                    })
                    .then(response => response.json())
                    .then(data => {
                        console.log("data", data);
                        if (data.init_point) {
                            const mercadoPagoPublicKey = @json(config('services.mercadopago.public_key'));
                            const mp = new MercadoPago(mercadoPagoPublicKey, {
                                locale: 'es-MX'
                            });

                        let miDiv = document.getElementById('checkout-button');
                        miDiv.innerHTML = '';
                        // Crea un componente de billetera de MercadoPago en el contenedor con id "wallet_container"
                        mp.bricks().create("wallet", "checkout-button", {
                            initialization: {
                                preferenceId: `${data['id']}`,
                                redirectMode: 'blank'
                            },
                            onSubmit: (data) => {
                                $('#submit-information').click();
                            },
                            customization: {
                                texts: {
                                    action: "pay",
                                    valueProp: 'security_safety',
                                },
                            },
                        });
                        /*mp.checkout({
                        preference: {
                            id: data['id']
                        },
                        render: {
                            container: '#checkout-button',
                            label: 'Ir Pagar',
                            type: 'link'
                        }
                        });*/
                        }
                    })
                    .catch(error => console.error('Error en la petición:', error));
            }

            function configurateMercadoPago() {
                const mercadoPagoPublicKey = @json(config('services.mercadopago.public_key'));
                const mp = new MercadoPago(mercadoPagoPublicKey, {
                    locale: 'es-CO'
                });
                return mp
                console.log("f")
            }
            const createPaymentPreference = async (nombre_producto, precio) => {


                // Generamos un ID único para simular el ID de preferencia
                const fakePreferenceId = 624755475686797505868583;

                console.log(`Preferencia creada para ${nombre_producto} con precio ${precio}`);

                return {
                    id: fakePreferenceId,
                    nombre_producto,
                    precio
                };
            };

            async function executePaymentByMercadoPago() {
                try {
                    const mp = configurateMercadoPago();
                    const preference = await createPaymentPreference(this.nombreProducto, this.precio);
                    mp.checkout({
                        preference: {
                            id: preference.id
                        },
                        render: {
                            container: '#checkout-button',
                            label: 'Pagar con Mercado Pago',
                            type: 'button'
                        }
                    });
                    // Prevenir el comportamiento por defecto del botón renderizado por MercadoPago
                    const checkoutButton = document.querySelector(
                        '#checkout-button button'); // Captura el botón que MercadoPago renderiza
                    if (checkoutButton) {
                        checkoutButton.addEventListener('click', function(event) {
                            console.log("aaa")
                            event.preventDefault(); // Evita que el botón provoque un submit o recargue la página
                        });
                    }
                } catch (errr) {
                    console.log("Error en el proceso de pago", errr);
                }
            }

            document.querySelector('#checkout-button').addEventListener('click', function (event) {
                event.preventDefault(); // Previene cualquier recarga de página
                console.log('Botón de Wallet Brick presionado');
            });

            function openProductModal(id) {
                var myModal = new bootstrap.Modal(document.getElementById('productModal'));
                executePaymentByMercadoPago();
                myModal.show();
            }
        </script>
        <script src="https://sdk.mercadopago.com/js/v2"></script> <!-- SDK de mercado pago -->
        <style>
            .price-group > div:has(#sku){
                display: none;
            }
            label:has(#is_featured){
                display:none;
            }
            .price-group > div:has(#sale_price){
                display: none;
            }
            .form-body > div:has(.image-box){
                display: none;
            }
            .form-body > div:has(#status){
                display: none;
            }
            .show-hide-editor-btn {
                display: none;
            }
            .btn_gallery{
                display: none;
            }
            .btn-trigger-add-attribute{
                display: none;
            }
        </style>
    @endif
@endif

@if ($showEnd)
    {!! Form::close() !!}
@endif

@yield('form_end')
@endsection

@if ($form->getValidatorClass())
@if ($form->isUseInlineJs())
    {!! Assets::scriptToHtml('jquery') !!}
    {!! Assets::scriptToHtml('form-validation') !!}
    {!! $form->renderValidatorJs() !!}
@else
    @push('footer')
        {!! $form->renderValidatorJs() !!}
    @endpush
@endif
@endif
<style>
    .toast-success {
    background-color: #51A351!important;
  }
  .toast-error {
    background-color: #BD362F!important;
  }
</style>