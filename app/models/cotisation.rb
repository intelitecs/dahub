class Cotisation < ApplicationRecord
  belongs_to :company
  belongs_to :employee
  validates_presence_of :periodStart, :periodEnd, :declaredAmount, :payedAmount
end
