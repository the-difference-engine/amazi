class Problem < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :flag_category  
end
  