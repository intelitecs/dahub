class Handicap < ApplicationRecord
  belongs_to :employee, required: true
  validates_presence_of :name, :cause, :description
end
