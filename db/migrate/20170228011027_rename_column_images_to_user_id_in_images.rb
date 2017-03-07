class RenameColumnImagesToUserIdInImages < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :image, :user_id
  end
end
