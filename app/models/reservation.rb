class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_shift
  belongs_to :user
  belongs_to :table

  validate :reservation_time_with_shift

  private

  def reservation_time_with_shift
    range = self.restaurant_shift.start_time..self.restaurant_shift.end_time
    errors.add(:reservation_time, "should in shift range") unless range === self.reservation_time
  end
end
