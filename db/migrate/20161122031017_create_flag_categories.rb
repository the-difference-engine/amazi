class CreateFlagCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :flag_categories do |t|
      t.text :category

      t.timestamps
    end
  end
end
