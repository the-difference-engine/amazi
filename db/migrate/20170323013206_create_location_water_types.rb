class CreateLocationWaterTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :location_water_types do |t|
      t.integer :location_id
      t.integer :water_type_id

      t.timestamps
    end
  end
end
