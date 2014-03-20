class CartsController < ApplicationController
  before_action :set_cart, only: [:update, :show, :destroy]

  def create
    @cart = Cart.new

    if @cart.save
      render json: @cart, status: :created
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cart.update(cart_params)
      render "show"
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cart.destroy
    render json: '', status: :no_content
  end

  def index
    @carts = Cart.all
  end

  def show
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:order_id)
  end
end
