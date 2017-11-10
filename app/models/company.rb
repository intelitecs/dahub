class Company < ApplicationRecord
  before_save {self.email = email.downcase}
  after_save :create_user
  has_many :employees
  belongs_to :company_registry_document, required: false
  belongs_to :juridic_form, required: true
  belongs_to :country, required: false
  has_many   :etablissements
  has_many   :charges
  has_one    :bank_account
  has_one    :accountant
  has_many :contracts
  has_many :cotisations
  validates_presence_of :name, :cnps, :cc, :acte_const_at, :juridic_form, :impotRegime, :impotCenter, :socialReason, :num_acte_const


  private

  def create_user
    companyProfile = Profile.find_by(name: "company")
    userProfile = Profile.find_by(name: "user")
    user = User.create!({username: self.socialReason, email: self.email, password: self.socialReason, password_confirmation: self.socialReason})
    UserProfile.create!({user: user, profile: userProfile})
    UserProfile.create!({user: user, profile: companyProfile})
  end

end
