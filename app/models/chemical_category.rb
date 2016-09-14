class ChemicalCategory < ApplicationRecord
  has_many :chemicals
  extend FriendlyId
  friendly_id :name, use: :slugged
end
