class JuridicForm < ApplicationRecord
  #
  #has_many :companies, required: true
  validates_presence_of :name, :description
end
