<?php

namespace Botble\Ecommerce\Forms;

use App\Models\User;
use Botble\Base\Facades\Assets;
use Botble\Base\Facades\Html;
use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\EditorFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\NumberFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\MediaImagesField;
use Botble\Base\Forms\Fields\MultiCheckListField;
use Botble\Base\Forms\Fields\NumberField;
use Botble\Base\Forms\Fields\OnOffField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TagField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\TreeCategoryField;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Enums\GlobalOptionEnum;
use Botble\Ecommerce\Enums\ProductTypeEnum;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Facades\ProductCategoryHelper;
use Botble\Ecommerce\Forms\Fronts\Auth\FieldOptions\TextFieldOption;
use Botble\Ecommerce\Http\Requests\ProductRequest;
use Botble\Ecommerce\Models\Brand;
use Botble\Ecommerce\Models\GlobalOption;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\ProductAttributeSet;
use Botble\Ecommerce\Models\ProductCollection;
use Botble\Ecommerce\Models\ProductLabel;
use Botble\Ecommerce\Models\ProductVariation;
use Botble\Ecommerce\Models\Tax;
use Botble\Ecommerce\Tables\ProductVariationTable;

class ProductForm extends FormAbstract
{
    public function setup(): void
    {
        $this->addAssets();

        $brands = Brand::query()->pluck('name', 'id')->all();

        $productCollections = ProductCollection::query()->pluck('name', 'id')->all();
        $usuario = User::query()->find(auth()->id());
        if($usuario->email != 'admin@nuevocar.com'){
            if(EcommerceHelper::validaConcesionario(auth()->id()) !== null){
                $productLabels = ProductLabel::query()->where('id', '!=', '5')->pluck('name', 'id')->all();
            } else{
                $productLabels = ProductLabel::query()->where('id', '!=', '1')->pluck('name', 'id')->all();
            }
        } else {
            $productLabels = ProductLabel::query()->pluck('name', 'id')->all();
        }        

        $productId = null;
        $selectedCategories = [];
        $tags = null;
        $totalProductVariations = 0;


        if ($this->getModel()) {
            $productId = $this->getModel()->id;

            $selectedCategories = $this->getModel()->categories()->pluck('category_id')->all();

            $totalProductVariations = ProductVariation::query()->where('configurable_product_id', $productId)->count();

            $tags = $this->getModel()->tags()->pluck('name')->implode(',');
        }


        $this->setupModel(new Product());
        $this->setValidatorClass(ProductRequest::class);
        $this->setFormOption('files', true);
        $this->add(
            'name',
             TextField::class,
              NameFieldOption::make()
              ->label('Ingresa el Nombre de la Publicación')
              ->placeholder('Ejemplo Vendo Mazda Ultimo Modelo 0 kms')
              ->required()->toArray());
        $this->add(
            'description',
            EditorField::class,
            EditorFieldOption::make()
                ->label("Escribe una breve descripcion del Vehiculo que vas a Vender")
                ->placeholder('Escribe la Descripción completa de tu vehiculo ejemplo:
                    Vendo Mazda 6 modelo 2011 disponible para traspaso, vehiculo con placa terminada en par  ')
        );
        $this->add('content', EditorField::class, ContentFieldOption::make()->allowedShortcodes()->toArray());
        /*$this->add('images[]', MediaImagesField::class, [
                'label' => trans('plugins/ecommerce::products.form.image'),
                'values' => $productId ? $this->getModel()->images : [],
            ]);*/ //Se ha quitado este codigo para habilitar las imagenes solo si el usuario va a editar un producto
            //dd($this->getModel()->name);
            if ($this->getModel()->name=="") {
                $this->add('images[]', MediaImagesField::class, [
                    'label'      => "Ingresa Imagenes de tu vehiculo",
                    'values'     => [],
                    'attributes' => [
                        'multiple' => true,1
                    ],
                ]);
            }
        /*->addMetaBoxes([
                'my_custom_view_box' => [
                    'title' => trans('Mi Título Personalizado'),  // Título del MetaBox
                    'content' => view('plugins/ecommerce::products.partials.payment-modal', [
                        'product' => $this->getModel(),  // Pasar los datos que necesitas en la vista
                    ]),
                    'priority' => 5,  // Prioridad de la caja (cuanto más bajo, más alto en la página)
                ],
            ])*/
        /*$this->addMetaBoxes([
            'with_related' => [
                'title' => null,
                'content' => Html::tag('div', '', [
                    'class' => 'wrap-relation-product',
                    'data-target' => route('products.get-relations-boxes', $productId ?: 0),
                ]),
                'wrap' => false,
                'priority' => 9999,
            ],
        ]);*/
        $this->when(! EcommerceHelper::isDisabledPhysicalProduct(), function () {
            $this->add('product_type', 'hidden', [
                'value' => request()->input('product_type') ?: ProductTypeEnum::PHYSICAL,
            ]);
        });
        $this->add('status', SelectField::class, StatusFieldOption::make()
        ->label("Estado de tu publicacion")
        ->toArray());
        $this->add(
            'is_featured',
            OnOffField::class,
            OnOffFieldOption::make()
                ->label(trans('core/base::forms.is_featured'))
                ->defaultValue(false)
                ->toArray()
        );
        $this->add(
            'categories[]',
            TreeCategoryField::class,
            SelectFieldOption::make()
                ->label("Selecciona una Categoria del vehiculo que vas a publicar")
                ->choices(ProductCategoryHelper::getActiveTreeCategories())
                ->selected(old('categories', $selectedCategories))
                ->addAttribute('card-body-class', 'p-0')
                ->toArray()
        );
        $this->when($brands, function () use ($brands) {
            $this
                ->add(
                    'brand_id',
                    SelectField::class,
                    SelectFieldOption::make()
                        ->label("Seleccionar la marca de tu Vehiculo")
                        ->choices($brands)
                        ->searchable()
                        ->emptyValue("Seleccione una marca")
                        ->allowClear()
                        ->toArray()
                );
        });

        $this->add(
            'image',
            MediaImageField::class,
            MediaImageFieldOption::make()
                ->label("Seleccciona una imagen que resalte tu producto")
                ->toArray()
        );
        $this->when($productCollections, function () use ($productCollections) {
            $selectedProductCollections = [];
            if ($this->getModel() && $this->getModel()->getKey()) {
                $selectedProductCollections = $this->getModel()
                    ->productCollections()
                    ->pluck('product_collection_id')
                    ->all();
            }

            $this
                ->add('product_collections[]', MultiCheckListField::class, [
                    'label' => trans('plugins/ecommerce::products.form.collections'),
                    'choices' => $productCollections,
                    'value' => old('product_collections', $selectedProductCollections),
                ]);
        });
        $this->when($productLabels, function () use ($productLabels) {
            $selectedProductLabel = null;  // Almacena un solo valor en lugar de un array

            if ($this->getModel() && $this->getModel()->getKey()) {
                $selectedProductLabel = $this->getModel()->productLabels()->pluck('product_label_id')->first();  // Obtener solo el primer valor
            }

            $this
                ->add('product_label', SelectField::class, [
                    'label' => "Planes",
                    'choices' => $productLabels,
                    'value' => old('product_label', $selectedProductLabel),  // Guardar solo un valor
                ]);
        });
        $this->when(EcommerceHelper::isTaxEnabled(), function () {
            $taxes = Tax::query()->orderBy('percentage')->get()->pluck('title_with_percentage', 'id')->all();

            if ($taxes) {
                $selectedTaxes = [];
                if ($this->getModel() && $this->getModel()->getKey()) {
                    $selectedTaxes = $this->getModel()->taxes()->pluck('tax_id')->all();
                } elseif ($defaultTaxRate = get_ecommerce_setting('default_tax_rate')) {
                    $selectedTaxes = [$defaultTaxRate];
                }

                $this->add('taxes[]', MultiCheckListField::class, [
                    'label' => "Impuestos",
                    'choices' => $taxes,
                    'value' => old('taxes', $selectedTaxes),
                ]);
            }
        });
        $this->when(EcommerceHelper::isCartEnabled(), function (ProductForm $form) {
            $form
                ->add(
                    'minimum_order_quantity',
                    NumberField::class,
                    NumberFieldOption::make()
                        ->label(trans('plugins/ecommerce::products.form.minimum_order_quantity'))
                        ->helperText(trans('plugins/ecommerce::products.form.minimum_order_quantity_helper'))
                        ->defaultValue(0)
                        ->toArray()
                )
                ->add(
                    'maximum_order_quantity',
                    NumberField::class,
                    NumberFieldOption::make()
                        ->label(trans('plugins/ecommerce::products.form.maximum_order_quantity'))
                        ->helperText(trans('plugins/ecommerce::products.form.maximum_order_quantity_helper'))
                        ->defaultValue(0)
                        ->toArray()
                );
        });
        $this->add('tag', TagField::class, [
            'label' => trans('plugins/ecommerce::products.form.tags'),
            'value' => $tags,
            'attr' => [
                'placeholder' => trans('plugins/ecommerce::products.form.write_some_tags'),
                'data-url' => route('product-tag.all'),
            ],
        ]);
        $this->setBreakFieldPoint('status');

       /* if (EcommerceHelper::isEnabledProductOptions()) {
            $this
                ->addMetaBoxes([
                    'product_options_box' => [
                        'title' => trans('plugins/ecommerce::product-option.name'),
                        'content' => view('plugins/ecommerce::products.partials.product-option-form', [
                            'options' => GlobalOptionEnum::options(),
                            'globalOptions' => GlobalOption::query()->pluck('name', 'id')->all(),
                            'product' => $this->getModel(),
                            'routes' => [
                                'ajax_option_info' => route('global-option.ajaxInfo'),
                            ],
                        ]),
                        'priority' => 4,
                    ],
                ]);
        }*/

        $productAttributeSets = ProductAttributeSet::getAllWithSelected($productId, []);

        $this
            ->addMetaBoxes([
                'attribute-sets' => [
                    'content' => '',
                    'before_wrapper' => '<div class="d-none product-attribute-sets-url" data-url="' . route('products.product-attribute-sets') . '">',
                    'after_wrapper' => '</div>',
                    'priority' => 3,
                ],
            ]);
        //dd($this->getModel());
        if (! $totalProductVariations) {
            $this
                ->removeMetaBox('variations')
                ->addMetaBoxes([
                    'general' => [
                        'title' => "Precio/Caracteristicas de Vehiculo",
                        'content' => view(
                            'plugins/ecommerce::products.partials.general',
                            [
                                'product' => $productId ? $this->getModel() : null,
                                'isVariation' => false,
                                'originalProduct' => null,
                            ]
                        ),
                        'before_wrapper' => '<div id="main-manage-product-type">',
                        'priority' => 2,
                    ],
                    'attributes' => [
                        'title' => "Atributos",
                        'content' => view('plugins/ecommerce::products.partials.add-product-attributes', [
                            'product' => $this->getModel(),
                            'productAttributeSets' => $productAttributeSets,
                            'addAttributeToProductUrl' => $this->getModel()->id
                                ? route('products.add-attribute-to-product', $this->getModel()->id)
                                : null,
                        ]),
                        'header_actions' => $productAttributeSets->isNotEmpty()
                            ? view('plugins/ecommerce::products.partials.product-attribute-actions')
                            : null,
                        'after_wrapper' => '</div>',
                        'priority' => 3,
                    ],
                ]);
        } elseif ($productId) {
            $productVariationTable = app(ProductVariationTable::class)
                ->setProductId($productId)
                ->setProductAttributeSets($productAttributeSets);

            if (EcommerceHelper::isEnabledSupportDigitalProducts() && $this->getModel()->isTypeDigital()) {
                $productVariationTable->isDigitalProduct();
            }

            $this
                ->removeMetaBox('general')
                ->addMetaBoxes([
                    'variations' => [
                        'title' => "El producto tiene Variaciones",
                        'content' => view('plugins/ecommerce::products.partials.configurable', [
                            'product' => $this->getModel(),
                            'productAttributeSets' => $productAttributeSets,
                            'productVariationTable' => $productVariationTable,
                        ]),
                        'header_actions' => view(
                            'plugins/ecommerce::products.partials.product-variation-actions',
                            ['product' => $this->getModel()]
                        ),
                        'has_table' => true,
                        'before_wrapper' => '<div id="main-manage-product-type">',
                        'after_wrapper' => '</div>',
                        'priority' => 3,
                        'render' => false,
                    ],
                ])
                ->addAfter('brand_id', 'sku', TextField::class, TextFieldOption::make()->label(trans('plugins/ecommerce::products.sku')));
        }

        if ($productId && is_in_admin(true)) {
            add_filter('base_action_form_actions_extra', function () {
                return view('plugins/ecommerce::forms.duplicate-action', ['product' => $this->getModel()])->render();
            });
        }
    }

    public function addAssets(): void
    {
        Assets::addStyles('datetimepicker')
            ->addScripts([
                'moment',
                'datetimepicker',
                'input-mask',
                'jquery-ui',
            ])
            ->addStylesDirectly('vendor/core/plugins/ecommerce/css/ecommerce.css')
            ->addScriptsDirectly('vendor/core/plugins/ecommerce/js/edit-product.js');
    }
}
