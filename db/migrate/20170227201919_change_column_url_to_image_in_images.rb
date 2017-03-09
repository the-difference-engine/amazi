class ChangeColumnUrlToImageInImages < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :url, :image
  end
end
