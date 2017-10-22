class Company < ApplicationRecord
  belongs_to :company_registry_document
  belongs_to :juridic_form
  belongs_to :country
  belongs_to :address
  has_many   :etablissements
  has_many   :charges
  has_one    :manager
  has_one    :bank_account
  has_one    :accountant
  has_many :contracts
  has_many :employees, through: :contracts
  validates_presence_of :name, :cnps, :cc, :acte_const_at, :juridic_form, :impotRegime, :impotCenter, :socialReason, :num_acte_const
end
