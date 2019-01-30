class CreateRestaurantShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_shifts do |t|
      t.string :start_time
      t.string :end_time
      t.string :shift_type
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
