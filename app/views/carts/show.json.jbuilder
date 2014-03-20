json.cart do
  json.extract! @cart, :id
  json.item @cart.items.pluck(:id)
end