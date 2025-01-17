<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;


use Botble\ACL\Models\User;
use Botble\ACL\Events\RoleAssignmentEvent;
use Botble\ACL\Http\Controllers\UserController;
use Botble\ACL\Http\Controllers\Auth\LoginController;
use Botble\ACL\Http\Requests\LoginRequest;
use Botble\ACL\Models\Role;
use Botble\ACL\Services\ActivateUserService;
use Botble\ACL\Services\CreateUserService;
use Botble\ACL\Traits\RegistersUsers;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Forms\Fronts\Auth\RegisterForm;
use Botble\Ecommerce\Http\Requests\RegisterRequest;
use Botble\Ecommerce\Models\Address;
use Botble\Ecommerce\Models\Customer;
use Botble\JsValidation\Facades\JsValidator;
use Botble\Location\Models\City;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Carbon\Carbon;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\URL;

class RegisterController extends BaseController
{
    use RegistersUsers;

    protected string $redirectTo = '/';

    public function __construct(protected ActivateUserService $activateUserService)
    {
        $this->middleware('customer.guest');
    }

    public function showRegistrationForm()
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
            return $html . JsValidator::formRequest(RegisterRequest::class)->render();
        });

        return Theme::scope(
            'ecommerce.customers.register',
            ['form' => RegisterForm::create()],
            'plugins/ecommerce::themes.customers.register'
        )->render();
    }

    public function register(RegisterRequest $request)
    {
        do_action('customer_register_validation', $request);

        /**
         * @var Customer $customer
         */
        $customer = $this->create($request->input());
        $this->createCustomerAsUser($request);//crea un user como rol usuario
        event(new Registered($customer));
        //Registramos la ciudad
        $concity = filter_input(INPUT_POST, 'ciudad', FILTER_SANITIZE_NUMBER_INT);    
        $ciudad = City::query()->find($concity);
        $customerDir = new Address();
        $customerDir->name = $customer->name;
        $customerDir->phone = $customer->phone;
        $customerDir->customer_id = $customer->id;
        $customerDir->city = $ciudad['name'];
        $customerDir->save();

        if (EcommerceHelper::isEnableEmailVerification()) {
            $this->registered($request, $customer);

            $message = __('Hemos enviado un correo de confirmacion, revisa tu correo');

            return $this
                ->httpResponse()
                ->setNextUrl(route('customer.login'))
                ->with(['auth_warning_message' => $message])
                ->setMessage($message);
        }

        $customer->confirmed_at = Carbon::now();
        $customer->save();

        $this->guard()->login($customer);

        return $this
            ->httpResponse()
            ->setNextUrl($this->redirectPath())
            ->setMessage(__('Registered successfully!'));
    }

    protected function create(array $data)
    {
        return Customer::query()->create([
            'name' => BaseHelper::clean($data['name']),
            'email' => BaseHelper::clean($data['email']),
            'phone' => BaseHelper::clean($data['phone'] ?? null),
            'password' => Hash::make($data['password'])
        ]);
    }

    private function createCustomerAsUser(Request $request){
        $user=new User();
        $user->fill($request->input());
        $user->password=Hash::make($request->input('password'));
        $user->save();
        $defultRoleAsClient=4;//Rol que es usuario y su id es 3

        if(
            $this->activateUserService->activate($user) &&
            ($defultRoleAsClient) &&
            $role=Role::query()->find($defultRoleAsClient)
        ){
            $role->users()->attach($user->getKey());
            //$this->LogInPostCreateUser($request); // inicio de sesion como usuario admin tipo cliente
            event(new RoleAssignmentEvent($role,$user));
           // $this->LogInPostCreateUser($request);
        }
    }
    //resolver error asociado al $loginRequest
    private function LogInPostCreateUser(Request $request){
        $userLoginController= new LoginController();
        $loginRequest= new LoginRequest();

        $loginRequest->merge([
            'username '=>$request->email,
            'password'=>$request->password
        ]);
        dd("creando usuario");

       $userLoginController->login($loginRequest);
    }
    protected function guard()
    {
        return auth('customer');
    }

    public function confirm(int|string $id, Request $request)
    {
        if (! URL::hasValidSignature($request)) {
            abort(404);
        }

        /**
         * @var Customer $customer
         */
        $customer = Customer::query()->findOrFail($id);

        $customer->confirmed_at = Carbon::now();
        $customer->save();

        $this->guard()->login($customer);

        return $this
            ->httpResponse()
            ->setNextUrl($this->redirectPath())
            ->setMessage(__('You successfully confirmed your email address.'));
    }

    public function resendConfirmation(Request $request)
    {
        /**
         * @var Customer $customer
         */
        $customer = Customer::query()->where('email', $request->input('email'))->first();

        if (! $customer) {
            return $this
                ->httpResponse()
                ->setError()
                ->setMessage(__('Cannot find this customer!'));
        }

        $customer->sendEmailVerificationNotification();

        return $this
            ->httpResponse()
            ->setMessage(__('We sent you another confirmation email. You should receive it shortly.'));
    }
}
