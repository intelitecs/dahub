class Etablissement < ApplicationRecord
  has_many :etablissement_activities
  has_many :activities, through: :etablissement_activities
  #belongs_to :company, required: true
  #belongs_to :address, required: false
  validates_presence_of :name, :code
end
