json.product do
  json.extract! @product, :id, :name, :price, :avatar, :image, :description, :created_at, :updated_at
end