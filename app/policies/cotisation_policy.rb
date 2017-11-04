class CotisationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
