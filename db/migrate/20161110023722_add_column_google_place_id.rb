class AddColumnGooglePlaceId < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :google_place, :string
  end
end
