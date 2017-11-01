class Charge < ApplicationRecord
  #belongs_to :company, required: true
  validates_presence_of :nature, :name, :value
end
