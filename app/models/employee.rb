class Employee < ApplicationRecord
  belongs_to :company, required: true
  #has_many :contracts
  #has_many :companies, through: :contracts
  has_many :family_members
  has_many :observations
  has_many :qualifications
  has_many :handicaps
  has_many :advantages
  #has_many :cotisations
  validates_presence_of :lastname, :firstname, :birthdate, :matricule, :nationality, :matrimonial_situation, :hireAt
end
