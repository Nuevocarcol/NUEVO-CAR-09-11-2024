<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;

use Botble\ACL\Models\User;
use Botble\ACL\Events\RoleAssignmentEvent;
use Botble\ACL\Models\Role;
use Botble\ACL\Services\ActivateUserService;
use Botble\ACL\Traits\RegistersUsers;
use Botble\Base\Facades\EmailHandler;
use Botble\Ecommerce\Forms\Fronts\Auth\ConcesionarioForm;
use Botble\JsValidation\Facades\JsValidator;
use Botble\SeoHelper\Facades\SeoHelper;
use Illuminate\Http\Request;
use Botble\Theme\Facades\Theme;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Http\Requests\ConcesionarioRequest;
use Botble\Ecommerce\Models\Address;
use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Models\Discount;
use Botble\Location\Models\City;
use Carbon\Carbon;
use DateTime;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


use function PHPUnit\Framework\isEmpty;

class ConcesionarioController extends BaseController
{
    use RegistersUsers;

    protected string $redirectTo = '/';

    public function __construct(protected ActivateUserService $activateUserService)
    {
        $this->middleware('customer.guest');
    }
    /**
     * Muestra el formulario de concesionario
     */
    public function showConcesionarioForm()
    {
        SeoHelper::setTitle(__('Register'));

        Theme::breadcrumb()->add(__('Register'), route('customer.register'));

        if (! session()->has('url.intended') &&
            ! in_array(url()->previous(), [route('customer.login'), route('customer.register')])
        ) {
            session(['url.intended' => url()->previous()]);
        }

        Theme::asset()
            ->container('footer')
            ->usePath(false)
            ->add('js-validation', 'vendor/core/core/js-validation/js/js-validation.js', ['jquery'], version: '1.0.1');

        add_filter(THEME_FRONT_FOOTER, function ($html) {
            return $html . JsValidator::formRequest(ConcesionarioRequest::class)->render();
        });

        return Theme::scope(
            'ecommerce.customers.register',
            ['form' => ConcesionarioForm::create()],
            'plugins/ecommerce::themes.customers.register'
        )->render();
    }
    
    /**
     * Registrar concesionario
     * @author miguel Rodriguez
     * @since 27 de Diciembre 2024
     */
    public function registerConcesionario(Request $request){

        do_action('customer_register_validation', $request);

        $terminos = filter_input(INPUT_POST, 'agree_terms_and_policy', FILTER_SANITIZE_NUMBER_INT);

        if($terminos != 0){
            $concesionario = new User();
            $concesionario->email = $_POST['email'];
            $concesionario->first_name = $request['name'];
            $concesionario->username = filter_input(INPUT_POST, 'phone', FILTER_SANITIZE_NUMBER_INT);
            $concesionario->password = Hash::make($request['password']);
            $concesionario->canCreatePublications = 1;
            $concity = filter_input(INPUT_POST, 'ciudad', FILTER_SANITIZE_NUMBER_INT);    
    
            $ciudad = City::query()->find($concity);
            
            //validamos que el nit no exista
            $validacion = User::query()
                ->select('*')
                ->where('email', $concesionario->email)
                ->get()
                ->first();
            $defultRoleAsClient = 4;
            if($validacion == null){
                try{
                    if($concesionario->save()){
                        $this->activateUserService->activate($concesionario);
                        //Creamos rol para el concesionario
                        if($role = Role::query()->find($defultRoleAsClient)){
                            $role->users()->attach($concesionario->getKey());
                            event(new RoleAssignmentEvent($role, $concesionario));
                        }
                        //Creamos el consecionario en la otra 
                        $customer = new Customer();
                        $customer->name = $concesionario->first_name;
                        $customer->password = $concesionario->password;
                        $customer->email = $concesionario->email;
                        $customer->phone = filter_input(INPUT_POST, 'phone', FILTER_SANITIZE_NUMBER_INT);
                        $customer->confirmed_at = Carbon::now();
                        $customer->save();
    
                        $customerDir = new Address();
                        $customerDir->name = $customer->name;
                        $customerDir->phone = $customer->phone;
                        $customerDir->customer_id = $customer->id;
                        $customerDir->city = $ciudad['name'];
                        $customerDir->save();
                        
                        //Creamos un codigo de descuento y validamos que no exista otro igua si no que genere otro nuevo
                        do {
                            $code = strtoupper(Str::random(12));
                        } while (Discount::query()->where(['code' => $code])->exists());
    
                        //Creamos el descuento
                        $descuentoCon = new Discount();
                        $descuentoCon->title = $concesionario->username;
                        $descuentoCon->code = $code;
                        $descuentoCon->start_date = new DateTime();
                        $descuentoCon->value = 30;
                        $descuentoCon->type_option = 'percentage';
                        $descuentoCon->save();
                        $this->registered($request, $customer);
                        EmailHandler::setModule(ECOMMERCE_MODULE_SCREEN_NAME)
                        ->setVariableValues([
                            'customer_name' => $customer->name,
                        ])
                        ->sendUsingTemplate('welcome', $customer->email);
                        $customer->sendEmailVerificationNotification();

                        $customer->confirmed_at = Carbon::now();
                        $customer->save();
                        $this->guard()->login($customer);

                        return $this
                        ->httpResponse()
                        ->setNextUrl($this->redirectPath())
                        ->setMessage(__('Registered successfully!'));
                    }
                }catch(Exception $e){
                    return $e;
                }
            } else {
                return $this
                    ->httpResponse()
                    ->setError()
                    ->setMessage('Ya se encuentra registrado');
                }
        } else {
            return true;
        }
    }
}