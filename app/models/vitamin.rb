class Vitamin < ApplicationRecord
  has_many :product_vitamins, :dependent => :destroy
  has_many :products, :through => :product_vitamins
end
