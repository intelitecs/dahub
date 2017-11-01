class Cotisation < ApplicationRecord
  #belongs_to :company, required: true
  #belongs_to :employee, required: true
  validates_presence_of :periodStart, :periodEnd, :declaredAmount, :payedAmount
end
