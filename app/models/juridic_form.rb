class JuridicForm < ApplicationRecord
  has_many :companies
  validates_presence_of :name, :description
end
