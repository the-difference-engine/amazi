class SavedLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def is_saved_location?(location_id)
    location = SavedLocation.find(location_id).where("user_id = current_user.id")
    return true if location > 0;
    return false
  end

end
