class Post < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :comments, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :likes, -> {where activity_type: :like}, class_name: Activity.name
  has_many :dislikes, -> {where activity_type: :dislike}, class_name: Activity.name

  validates :user, presence: true
  validates :product, presence: true
  validates :content, presence:true
end
