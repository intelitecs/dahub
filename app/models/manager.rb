class Manager < ApplicationRecord
  belongs_to :company
  belongs_to :address
  validates_presence_of :lastname, :firstname, :nationality, :birthdate
end
