class CreateChemicalQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :chemical_questions do |t|
      t.text :question
      t.text :answer

      t.timestamps null: true
    end
  end
end
