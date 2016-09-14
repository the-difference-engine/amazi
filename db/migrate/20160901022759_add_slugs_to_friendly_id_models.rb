class AddSlugsToFriendlyIdModels < ActiveRecord::Migration[5.0]
  def change
    add_column :chemical_categories, :slug, :string, unique: true
    add_column :chemicals, :slug, :string, unique: true
  end
end
