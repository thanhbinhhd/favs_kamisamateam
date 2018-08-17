class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :post

  enum activity_type: [:like, :dislike]
end
