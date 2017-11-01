class Activity < ApplicationRecord
  #has_many :etablissement_activities
  #has_many :etablissements, through: :etablissement_activities
  validates_presence_of :code, :nature, :sector
end
