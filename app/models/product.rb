class Product < ApplicationRecord
  has_many :product_vitamins, :dependent => :destroy
  has_many :vitamins, :through => :product_vitamins
  has_many :product_posts, :dependent => :destroy
  has_many :posts, :through => :product_posts
end
