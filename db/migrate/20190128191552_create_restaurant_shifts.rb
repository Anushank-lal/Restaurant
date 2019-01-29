class CreateRestaurantShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_shifts do |t|
      t.time :start_time
      t.time :end_time
      t.string :shift_type
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
