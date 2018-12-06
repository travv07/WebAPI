class V1::ProductsController < V1::BaseController
	before_action :find_id, only: [:show,:edit,:destroy]
	def index
		page = params[:page]
		per = params[:per]
		@products = Product.page(page).per(per)
		data = ActiveModel::Serializer::CollectionSerializer.new(@products, each_serializer: ProductSerializer)
		success_response data, "asdasd" 
		# json_reponse @products
	end
	def show
		success_response @product, "asdasd" 	
	end
	def new
		
	end
	def create
	    @product = Product.new product_params
	    if @product.save
		  	success_response @product, "created"
			else
				error_response "not created"
	    end
	end

	def edit
	    
		success_response @product, "asdasd" 
	end
	def update
	    if @product.update product_params
	      success_response @product, "updated"
	    else
	      error_response "not updated"
	    end
	end
	def destroy
	    if @product.destroy
	      success_response @product, "deleted"
	    else
	      error_response "not updated"
	    end
	end
	def product_params
		params.require(:product).permit(:name,:description,:image,:price,:quality,:category)
	end
	def find_id
		@product = Product.find_by id: params[:id]
	end

end
