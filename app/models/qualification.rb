class Qualification < ApplicationRecord
  #belongs_to :employee, required: true
  validates_presence_of :name, :description
end
