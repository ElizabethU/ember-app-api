class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :update]

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render "show"
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    render json: '', status: :no_content
  end

  def index
    @products = Product.all
  end

  def show
  end

  private
  
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :image, :avatar, :description)
  end
end
