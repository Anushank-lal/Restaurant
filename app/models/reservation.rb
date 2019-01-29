class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_shift
  belongs_to :user
  belongs_to :table

  # => Have only one reservation for a table in a shift
  validates_uniqueness_of :reservation_time, scope: [:restaurant_shift_id, :table_id, :restaurant_id], message: "Table is already reserved for given time."

  validate :reservation_time_with_shift
  validate :check_table_capacity

  attr_accessor :table_name, :reservation_shift, :guest_email

  def guest_name
    Guest.find(self.user_id).name
  end

  def table_name
    Table.find(self.table_id).table_name
  end

  def create_reservations(reservation_params)
    table = Table.find_by(table_name: reservation_params[:table_name])
    guest = Guest.find_by(email: reservation_params[:guest_email])
    shift = table.restaurant.restaurant_shifts.find_by(shift_type: reservation_params[:reservation_shift])

    self.table_id = table.id
    self.user_id = guest.id
    self.reservation_time = "2000-01-01 14:06:28"#reservation_params[:reservation_time]
    self.restaurant_id = table.restaurant_id
    self.restaurant_shift_id = shift.id
    self.save!
  end

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
