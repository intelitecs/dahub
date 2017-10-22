class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :user_profiles
  has_many :profiles, through: :user_profiles
  belongs_to :address
  validates_presence_of :email, :username
end
