<div class="container">     
    <div id="custom-card" class="card">       
        <form id="custom-search-form" class="card-body">      
            <div class="form-group">      
                <select class="custom-select">         
                        <option selected>Vehicles</option>     
                        @foreach($categories as $category)
                            @if($category->icon_image != 'invisible' && $category->name != "Marcas")
                                <option value="{{$category->id}}">{{$category->name}}</option>         
                            @endif
                        @endforeach
                </select>          
            </div>         
            <div class="form-group">            
                <select class="custom-select">              
                    <option selected>Brands</option>  
                    @foreach($brands as $brand)            
                        <option value="{{$brand->id}}">{{$brand->name}}</option>
                    @endforeach            
                </select>          
            </div>          
            <div class="form-group">            
                <select class="custom-select">              
                    <option selected>Models</option>              
                    <option value="1">One</option>              
                    <option value="2">Two</option>              
                    <option value="3">Three</option>            
                </select>          
            </div>          
            <div class="btn-group">            
                <button class="btn btn-primary" type="button">              
                    <i class="linearicons-magnifier"></i>            
                </button>          
            </div>        
        </form>      
    </div>    
</div>