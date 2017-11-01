class Manager < ApplicationRecord
  #belongs_to :company, required: true
  validates_presence_of :lastname, :firstname, :nationality, :birthdate
end
