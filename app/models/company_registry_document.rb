class CompanyRegistryDocument < ApplicationRecord
  #has_one :company
  validates_presence_of :name, :description, :document_number
end
