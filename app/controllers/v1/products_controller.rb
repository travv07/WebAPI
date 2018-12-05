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
		json_reponse @product
	end
	def new
		
	end
	def create
	    @product = Product.new product_params
	    if @product.save
	      json_reponse(@product,status: :created)
	    end
	end

	def edit
	    json_reponse @product
	end
	def update
	    if @product.update product_params
	      json_reponse @product
	    else
	      error_response
	    end
	end
	def destroy
	    if @product.destroy
	      json_reponse(message: 'Deleted',status: :ok)
	    else
	      error_response
	    end
	end
	def product_params
		params.require(:product).permit(:name,:description,:image,:price,:quality,:category)
	end
	def find_id
		@product = Product.find_by id: params[:id]
	end

end
