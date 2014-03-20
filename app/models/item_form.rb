class ItemForm

  def initialize(item_hash)
   item_hash[:cart_id]        = item_hash.delete(:cart)
   item_hash[:product_id]     = item_hash.delete(:product)
   item_hash[:current_price]  = item_hash.delete(:current_price)
   @item_hash = item_hash
  end

  def item
    Item.new(permitted_values)
  end

  def permitted_values
    @item_hash.permit(:quantity, :product_id, :cart_id, :current_price)
  end
end