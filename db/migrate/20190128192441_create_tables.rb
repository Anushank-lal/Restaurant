class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :table_name
      t.integer :min_guests
      t.integer :max_guests
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
