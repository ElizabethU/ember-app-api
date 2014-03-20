class Cart < ActiveRecord::Base
  has_many :items
  has_one :order
  has_many :products, through: :items 
end
