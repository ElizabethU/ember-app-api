json.items @items do |item|
  json.extract! item, :id, :product, :quantity, :order, :current_price, :cart_id, :created_at, :updated_at
end