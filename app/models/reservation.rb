class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_shift
  belongs_to :user
  belongs_to :table

  validate :reservation_time_with_shift
  validate :check_table_capacity

  private

  def reservation_time_with_shift
    range = self.restaurant_shift.start_time..self.restaurant_shift.end_time
    errors.add(:reservation_time, "must lie within restaurant shift start time and end time.") unless range === self.reservation_time
  end

  def check_table_capacity
    range = self.table.min_guests..self.table.max_guests
    errors.add(:guest_count, "must be between maximum and minimum capacity of the table.") unless range === self.guest_count
  end
end
