class Handicap < ApplicationRecord
  belongs_to :employee
  validates_presence_of :name, :cause, :description
end
