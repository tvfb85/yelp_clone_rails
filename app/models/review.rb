class Review < ActiveRecord::Base

  belongs_to :restaurant, foreign_key: "restaurant_id"

  validates :rating, inclusion: (1..5)

end
