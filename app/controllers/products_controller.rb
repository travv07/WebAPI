class ProductsController < ApplicationController
  before_action :find_id, only: [:edit,:update,:new,:destroy]
  def index
  end

  def show
  end

  def new
      @product = Product.new
  end

  def create
      @product = Product.new product_params
      if @product.save 
        redirect_to products_admin_path
      else
        render :new
      end
  end

  def edit

  end

  def update
    if @product.update product_params
      redirect_to products_admin_path
    else
      render :edit
    end
  end

  def destroy
  end
  def find_id
    @product = Product.find_by id: params[:id]
  end
  def product_params
    params.require(:product).permit(:name,:description,:category,:price,:quality)
  end
end
