json.cart do
  json.extract! @cart, :id
  json.items @cart.items.pluck(:id)
end