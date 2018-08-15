class ProductPost < ApplicationRecord
  belongs_to :post
  belongs_to :product
end
