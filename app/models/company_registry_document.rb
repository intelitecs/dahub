class CompanyRegistryDocument < ApplicationRecord
  has_many :companies
  validates_presence_of :name, :description, :document_number
end
