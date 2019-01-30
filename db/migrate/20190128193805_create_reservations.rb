class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :reservation_time
      t.integer :user_id
      t.integer :guest_count
      t.references :restaurant, :index => true
      t.references :restaurant_shift, :index => true
      t.references :table, :index => true

      t.timestamps
    end
  end
end
