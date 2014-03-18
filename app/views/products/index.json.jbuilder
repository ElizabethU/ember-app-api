json.products @products do |product|
  json.extract! product, :id, :name, :price, :avatar, :image, :description, :created_at, :updated_at
end