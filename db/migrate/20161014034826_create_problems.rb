class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.text :description
      t.integer :user_id
      t.integer :location_id
      t.boolean :active

      t.timestamps null: true
    end
  end
end
