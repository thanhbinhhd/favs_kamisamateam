class Vitamin < ApplicationRecord
  has_many :products, :through => :product_vitamins
end
