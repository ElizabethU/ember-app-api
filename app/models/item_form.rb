class ItemForm

  def initialize(item_hash)
   item_hash[:cart_id]        = item_hash.delete(:cart)
   item_hash[:product_id]     = item_hash.delete(:product)
   @item_hash = item_hash
  end

  def item
    Item.new(permitted_values)
  end

  def permitted_values
    @item_hash.permit(:quantity, :product_id, :cart_id, :current_price)
  end
end

{cart: 1, product: 1, current_price: 1000}