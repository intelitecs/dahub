class IdentityCard < ApplicationRecord
  belongs_to :employee
  belongs_to :country
  belongs_to :city
  validates_presence_of :matricule, :start_at, :end_at, :authority_full_name, :authority_title, :identity_type
end
