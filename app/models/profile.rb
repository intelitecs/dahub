class Profile < ApplicationRecord
  has_many :user_profiles
  has_many :users, through: :user_profiles
  validates_presence_of :name
end
