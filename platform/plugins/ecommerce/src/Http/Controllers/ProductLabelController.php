<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Supports\Breadcrumb;
use Botble\Ecommerce\Forms\ProductLabelForm;
use Botble\Ecommerce\Http\Requests\ProductLabelRequest;
use Botble\Ecommerce\Models\ProductLabel;
use Botble\Ecommerce\Tables\ProductLabelTable;
use MercadoPago;
use MercadoPago\Preference;
use MercadoPago\Item;
use App\Models\history_payments;
use Botble\Ecommerce\Models\Discount;
use Botble\Ecommerce\Models\ProductAttributeSet;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use MercadoPago\Client\Preference\PreferenceClient;
use MercadoPago\Exceptions\MPApiException;
use MercadoPago\MercadoPagoConfig;

class ProductLabelController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/ecommerce::product-label.name'), route('product-label.index'));
    }

    public function index(ProductLabelTable $table)
    {
        $this->pageTitle(trans('plugins/ecommerce::product-label.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::product-label.create'));

        return ProductLabelForm::create()->renderForm();
    }

    public function store(ProductLabelRequest $request)
    {
        $form = ProductLabelForm::create();

        $form->setRequest($request)->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('product-label.index'))
            ->setNextUrl(route('product-label.edit', $form->getModel()->id))
            ->withCreatedSuccessMessage();
    }

    public function edit(ProductLabel $productLabel)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $productLabel->name]));

        return ProductLabelForm::createFromModel($productLabel)->renderForm();
    }

    public function update(ProductLabel $productLabel, ProductLabelRequest $request)
    {
        ProductLabelForm::createFromModel($productLabel)->setRequest($request)->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('product-label.index'))
            ->withUpdatedSuccessMessage();
    }

    public function destroy(ProductLabel $productLabel)
    {
        return DeleteResourceAction::make($productLabel);
    }

    public function getPrice($id)
    {
        try{
            // Buscar el ProductLabel por su ID
            $label = ProductLabel::find($id);

            // Verificar si existe el ProductLabel y devolver el precio, o un error si no existe
            if ($label) {
                return response()->json(['price' => $label]);
            } else {
                return response()->json(['error' => 'Label no encontrado'], 404);
            }
        } catch (Exception $e){
            return $e;
        }
    }

    public function getNameLabel(Request $id)
    {
        // Buscar el ProductLabel por su ID
        $label = ProductLabel::find($id);

        // Verificar si existe el ProductLabel y devolver el precio, o un error si no existe
        if ($label) {
            return response()->json(['name' => $label->name]);
        } else {
            return response()->json(['error' => 'Label no encontrado'], 404);
        }
    }

    public function createPreferenceForMercadoPago(Request $request)
    {

        try {

            //MercadoPagoConfig::setAccessToken(env('MERCADO_PAGO_KEY'));
            $this->authenticate();
            $payment = new history_payments();
            $payment->userId = Auth()->id();
            $payment->labelId = $request->input('label_id');
            $payment->price = $request->price;
            $payment->state = 'En Proceso';
            $payment->save();

            $uuidWithoutHyphens = str_replace('-', '', $payment->uuid);

            $client = new PreferenceClient();
            $preference = $client->create([
                "items" => [
                    [
                        "id" => $request->label_id,
                        "title" => $request->productName,
                        "quantity" => 1,
                        "unit_price" => floatval($request->price)
                    ],
                ],
                "statement_descriptor"=>"tienda",
                "external_reference"=>$request->label_id,
            ]);
            return response()->json([
                "id" => $preference->id,
                "init_point" => $preference->init_point
            ], 200);
        } catch (MPApiException $e) {
            return response()->json([
                "error" => "error de comunicación con la API"
            ], 500);
        } catch (Exception $e) {
            return $e;
        }
    }
    // Function that will return a request object to be sent to Mercado Pago API
    function createPreferenceRequest($items, $payer): array
    {
        $paymentMethods = [
            "excluded_payment_methods" => [],
            "installments" => 12,
            "default_installments" => 1
        ];



        $request = [
            "items" => $items,
            "payer" => $payer,
            "payment_methods" => $paymentMethods,
            "statement_descriptor" => "NAME_DISPLAYED_IN_USER_BILLING",
            "external_reference" => "1234567890",
            "expires" => false,
            "auto_return" => 'approved',
        ];

        return $request;
    }
    protected function authenticate()
    {
        // Getting the access token from .env file (create your own function)
        $mpAccessToken = env('MERCADO_PAGO_TOKEN');
        // Set the token the SDK's config
        MercadoPagoConfig::setAccessToken($mpAccessToken);
        // (Optional) Set the runtime enviroment to LOCAL if you want to test on localhost
        // Default value is set to SERVER
        MercadoPagoConfig::setRuntimeEnviroment(MercadoPagoConfig::SERVER);
    }

    /**
     * Validar y calcular el descuento segun el codigo que se agrege
     * @author miguel Rodriguez
     * @since 2 de Enero 2025
     */
    public function descuento(Request $request){
        //buscamos el id del plan
        $label = ProductLabel::find($request['id']);
        //Buscamos el descuento por codigo
        $descuento = Discount::query()
        ->where('code', $request['code'])
        ->select('*')
        ->get()
        ->first();

        $valor = $label['price'];

        //Calculamos el descuento
        if(isset($descuento)){
            $valor = round($label['price'] * ($descuento['value'] / 100));
            $valor = $label['price'] - $valor;
        }

        return $valor;
    }

    /**
     * Consulta los atributos 
     * @author miguel rodriguez
     * @since 07 de Enero 2025
     */
    public function getAtributo(){
        $producto = ProductAttributeSet::count(); 
        return $producto;
    }
}
