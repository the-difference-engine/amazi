class AddChemicalIdToChemicalQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :chemical_questions, :chemical_id, :integer
  end
end
