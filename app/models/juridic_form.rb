class JuridicForm < ApplicationRecord
  has_many :companies
  validates :name, presence: true, length: {maximum: 40}
end
