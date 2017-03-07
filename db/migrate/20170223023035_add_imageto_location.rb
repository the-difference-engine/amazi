class AddImagetoLocation < ActiveRecord::Migration[5.0]
  def up
    add_attachment :locations, :image
  end

  def down
    remove_attachment :locations, :image
  end
end
