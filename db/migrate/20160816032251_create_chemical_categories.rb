class CreateChemicalCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :chemical_categories do |t|
      t.string :name

      t.timestamps null: true
    end
  end
end
