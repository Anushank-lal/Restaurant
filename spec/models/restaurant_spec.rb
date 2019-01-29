require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  # Association test
  # ensure Restaurant model has a 1:m relationship with the RestaurantShifts, Tables, Reservations model
  it { should have_many(:restaurant_shifts).dependent(:destroy) }
  it { should have_many(:tables).dependent(:destroy) }
  it { should have_many(:reservations).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:email) }
end
