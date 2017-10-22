class Advantage < ApplicationRecord
  belongs_to :employee
  validates_presence_of :name, :description, :value
end
