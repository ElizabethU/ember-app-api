class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :show, :destroy]

  def create
    @item = ItemForm.new(params[:item]).item
    if @item.save
      render :show
    end
  end

  def update
    if @item.update(item_params)
      render "show"
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    render json: '', status: :no_content
  end

  def index
    @items = Item.all
  end

  def show
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:product, :quantity, :current_price, :cart)
  end
end
