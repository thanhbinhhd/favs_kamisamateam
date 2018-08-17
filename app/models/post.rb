class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :likes, -> {where activity_type: :like}, class_name: Activity.name
  has_many :dislikes, -> {where activity_type: :dislike}, class_name: Activity.name
  has_many :product_posts, :dependent => :destroy
  has_many :products, :through => :product_posts

  validates :user, presence: true
  validates :title, presence:true
  validates :content, presence:true

  def main_comments
    comments.where(parent_id: nil).order id: :desc
  end

  def activity_by_user user
    activities.find_by user: user
  end

  mount_uploader :file ,ImageUploader
end
