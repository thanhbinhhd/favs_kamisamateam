class Activitie < ApplicationRecord
  belongs_to :user
  belongs_to :post

  enum activitie_type: [:like, :dislike]
end
