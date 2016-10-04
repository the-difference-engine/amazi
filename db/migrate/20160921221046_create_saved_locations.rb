class CreateSavedLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_locations do |t|
      t.integer :user_id
      t.integer :location_id

      t.timestamps null: true
    end
  end
end
