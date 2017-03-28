class RemoveColumnWaterTypeFromLocation < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :water_type, :string
    remove_column :locations, :image_file_name, :string
    remove_column :locations, :image_content_type, :string
    remove_column :locations, :image_file_size, :integer
    remove_column :locations, :image_updated_at, :datetime
  end
end
