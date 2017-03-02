class ChangeColumnUserIdFromStringToIntegerInImages < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :user_id, "integer Using Cast(user_id as integer)"
  end
end
