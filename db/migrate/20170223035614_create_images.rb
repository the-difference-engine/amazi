class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
    	t.string :url
    	t.integer :location_id
      t.timestamps
    end
  end
end
