class BankAccount < ApplicationRecord
  belongs_to :company, required: true
  validates_presence_of :account_number, :bank_code, :agency_code, :owner, :rib_code, :iban_code
end
