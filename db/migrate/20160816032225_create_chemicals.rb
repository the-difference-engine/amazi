class CreateChemicals < ActiveRecord::Migration[5.0]
  def change
    create_table :chemicals do |t|
      t.string :name
      t.float :range_minimum
      t.float :range_maximum
      t.integer :unit_id
      t.integer :chemical_category_id

      t.timestamps null: true
    end
  end
end
