class AddFlagCategoryIdToProblems < ActiveRecord::Migration[5.0]
  def change
    add_column :problems, :flag_category_id, :integer
  end
end
