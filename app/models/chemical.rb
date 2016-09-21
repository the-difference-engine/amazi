class Chemical < ApplicationRecord
  has_many :water_qualities
  has_many :water_providers, through: :water_qualities
  has_many :chemical_questions
  belongs_to :chemical_category
  belongs_to :unit

  extend FriendlyId
  friendly_id :name, use: :slugged
end
