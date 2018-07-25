class Product < ApplicationRecord
  has_many :vitamins, :through => :product_vitamins
end
