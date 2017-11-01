class Address < ApplicationRecord
  belongs_to :country, required: false
  belongs_to :city, required: false
  belongs_to :user, required: false
  #belongs_to :manager, required: false
  #belongs_to :employee, required: false
  #belongs_to :accountant, required: false
end
