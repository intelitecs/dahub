class Observation < ApplicationRecord
  #belongs_to :employee, required: true
  validates_presence_of :author, :description
end
