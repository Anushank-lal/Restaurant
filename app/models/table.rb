class Table < ApplicationRecord
  belongs_to :restaurant
end

#R -> RST -> Tables -> Reservation
