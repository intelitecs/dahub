class IdentityCard < ApplicationRecord
  belongs_to :employee, required: true
  #belongs_to :country, required: false
  #belongs_to :city, required: false
  validates_presence_of :matricule, :start_at, :end_at, :authority_full_name, :authority_title, :identity_type
end
