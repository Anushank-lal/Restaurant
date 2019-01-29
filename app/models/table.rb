class Table < ApplicationRecord
  belongs_to :restaurant

  validates :table_name, :min_guests, :max_guests, presence: true
  validates :table_name, uniqueness: true
end
