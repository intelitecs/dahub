class Accountant < ApplicationRecord
  #belongs_to :company, required: true
  validates_presence_of :lastname, :firstname, :employed

end
