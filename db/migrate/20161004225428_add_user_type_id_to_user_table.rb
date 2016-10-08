class AddUserTypeIdToUserTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_type_id, :integer, default: 2
  end
end
