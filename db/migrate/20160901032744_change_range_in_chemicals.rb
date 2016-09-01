class ChangeRangeInChemicals < ActiveRecord::Migration[5.0]
  def change
    rename_column :chemicals, :range_maximum, :maximum
    remove_column :chemicals, :range_minimum, :float
  end
end
