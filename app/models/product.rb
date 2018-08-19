class Product < ApplicationRecord
  has_many :product_vitamins, :dependent => :destroy
  has_many :vitamins, :through => :product_vitamins
  has_many :posts, dependent: :destroy

  mount_uploader :image, ImageUploader
end
