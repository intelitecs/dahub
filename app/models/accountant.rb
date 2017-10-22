class Accountant < ApplicationRecord
  belongs_to :address
  belongs_to :company
  validates_presence_of :lastname, :firstname, :employed

end
