class CreateWaterProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :water_providers do |t|
      t.string :name

      t.timestamps null: true
    end
  end
end
