class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :location_subcategory_id
      t.integer :water_provider_id

      t.timestamps null: true
    end
  end
end
