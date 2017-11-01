class City < ApplicationRecord
  belongs_to :country, required: true
  validates_presence_of :name, :district, :hall
end
