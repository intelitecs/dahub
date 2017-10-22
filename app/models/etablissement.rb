class Etablissement < ApplicationRecord
  has_many :etablissement_activities
  has_many :activities, through: :etablissement_activities
  belongs_to :company
  belongs_to :address
  validates_presence_of :name, :code
end
