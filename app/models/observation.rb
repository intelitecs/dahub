class Observation < ApplicationRecord
  belongs_to :employee
  validates_presence_of :author, :description
end
