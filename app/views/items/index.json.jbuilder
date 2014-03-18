json.items @items do |item|
  json.extract! item, :id, :product, :quantity, :order, :current_price, :created_at, :updated_at
end