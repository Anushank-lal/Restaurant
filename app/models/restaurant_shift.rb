class RestaurantShift < ApplicationRecord

  belongs_to :restaurant

  validates :start_time, :end_time, presence: true
  validate :shift_timings

 private

  # => Shift end time can’t be less than the start time
  def shift_timings
    return if start_time.blank? || end_time.blank?

    if self.end_time < self.start_time
      raise "Shift end time can’t be less than the start time"
    end
  end

end
