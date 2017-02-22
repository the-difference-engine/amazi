class AddWaterTypeToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :water_type, :string
  end
end
