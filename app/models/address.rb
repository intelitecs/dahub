class Address < ApplicationRecord
  belongs_to :country
  belongs_to :city
  has_one :user
end
