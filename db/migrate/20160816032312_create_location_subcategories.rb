class CreateLocationSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :location_subcategories do |t|
      t.string :name
      t.integer :location_category_id

      t.timestamps null: true
    end
  end
end
