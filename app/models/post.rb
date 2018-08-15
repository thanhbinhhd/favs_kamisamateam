class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :product_posts, :dependent => :destroy
  has_many :products, :through => :product_posts

  validates :user, presence: true
  validates :title, presence:true
  validates :content, presence:true
end
