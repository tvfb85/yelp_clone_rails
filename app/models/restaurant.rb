class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :user, foreign_key: "user_id"

  validates :name, length: { minimum: 3 }, uniqueness: true

end
