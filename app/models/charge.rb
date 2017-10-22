class Charge < ApplicationRecord
  belongs_to :company
  validates_presence_of :nature, :name, :value
end
