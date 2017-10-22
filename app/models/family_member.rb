class FamilyMember < ApplicationRecord
  belongs_to :employee
  validates_presence_of :lastname, :firstname,:nature, :birthdate, :nationality
end
