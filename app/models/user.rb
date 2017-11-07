class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token
  before_save {self.email = email.downcase}
  before_create :create_activation_digest
  before_destroy :destroy_user_profile
  has_many :user_profiles
  has_many :profiles, through: :user_profiles
  has_one :address
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :username, presence: true, length: {maximum: 20}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true
  #has_secure_token

  #Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  #Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  #Returns true if the given token matches the digest.
  def authenticated?(attribute,token)
    digest = self.send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  # Forgets a user
  def forget
    update_attribute(:remember_digest, nil)
  end

  private


  #create token and digest
  def create_activation_digest
    if self.confirmation_token.blank?
      self.confirmation_token = User.new_token
      self.activation_digest = User.digest(activation_token)
      #update_attribute(:activation_digest, User.digest(activation_token))
    end
  end

  def gen_confirmation_token
    if self.confirmation_token.blank?
       self.confirmation_token = User.new_token
       self.activation_digest = User.digest(activation_token)
    end
  end

  def destroy_user_profile
    UserProfile.where(user_id: self.id).destroy_all
  end

end
