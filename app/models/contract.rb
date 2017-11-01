class Contract < ApplicationRecord
  belongs_to :employee, required: true
  belongs_to :company, required: true
  validates_presence_of :contract_type, :start_at, :position, :brute_month_salary
end
