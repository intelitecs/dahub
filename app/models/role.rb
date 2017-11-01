class Role < ApplicationRecord
  before_save {self.name=name.downcase}
  has_many :profile_roles
  has_many :profiles, through: :profile_roles
  validates :name, presence: true, length: {maximum: 20}
end
