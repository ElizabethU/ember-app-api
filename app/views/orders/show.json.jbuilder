json.order do
  json.extract! @order, :id, :customer_name, :email, :status, :zipcode, :expdate, :ccv, :ccnumber, :cart_id, :created_at, :updated_at
end