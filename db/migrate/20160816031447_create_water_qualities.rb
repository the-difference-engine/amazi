class CreateWaterQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :water_qualities do |t|
      t.integer :water_provider_id
      t.integer :chemical_id
      t.float :chemical_amount
      t.integer :unit_id

      t.timestamps null: true
    end
  end
end
