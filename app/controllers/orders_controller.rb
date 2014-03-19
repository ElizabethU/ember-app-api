class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy, :update]

  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def update
    if @order.update(order_params)
      render "show"
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
    render json: '', status: :no_content
  end

  def index
    @orders = Order.all
  end

  def show
  end

  private
  
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:customer_name, :email, :status, :ccnumber, :ccv, :expdate, :zipcode)
  end
end
