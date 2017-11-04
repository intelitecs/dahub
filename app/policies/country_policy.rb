class CountryPolicy < ApplicationPolicy

  #Every body can list countries
  def index?
    true
  end

  #Only authenticated superadmin and admin users can create country
  def create?
    user.present? && superadmin_or_admin?(user)
  end

  def update?

  end

  def destroy?

  end

  class Scope < Scope
    def resolve
      scope
    end
  end

  private
  def country
    record
  end

  def superadmin_or_admin?(user)
    superadminProfile = Profile.find_by!(name: "superadmin")
    adminProfile = Profile.find_by!(name: "admin")
    user.profiles.include?(superadminProfile) || user.profiles.include?(adminProfile)
  end
end
