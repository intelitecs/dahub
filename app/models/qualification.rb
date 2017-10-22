class Qualification < ApplicationRecord
  belongs_to :employee
  validates_presence_of :name, :description
end
