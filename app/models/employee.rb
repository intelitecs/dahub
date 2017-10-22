class Employee < ApplicationRecord
  belongs_to :company
  has_many :contracts
  has_many :companies, through: :contracts
  belongs_to :address
  has_many :family_members
  has_many :observations
  has_many :qualifications
  has_many :handicaps
  has_many :advantages
  validates_presence_of :lastname, :firstname, :birthdate, :matricule, :nationality, :matrimonial_situation, :hireAt
end
