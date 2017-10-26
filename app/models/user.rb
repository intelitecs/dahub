class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :user_profiles
  has_many :profiles, through: :user_profiles
  belongs_to :address
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :username, presence: true, length: {maximum: 20}
  has_secure_password
end
