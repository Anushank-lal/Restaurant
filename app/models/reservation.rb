class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_shift
  belongs_to :user

  has_one :table
end
