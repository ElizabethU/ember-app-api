json.item @items do |item|
  json.extract! item, :id, :product_id, :quantity, :current_price, :created_at, :updated_at
  json.product item.product_id
  json.cart item.cart_id
end