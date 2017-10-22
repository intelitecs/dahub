class Contract < ApplicationRecord
  belongs_to :employee
  belongs_to :company
  validates_presence_of :contract_type, :start_at, :position, :brute_month_salary
end
