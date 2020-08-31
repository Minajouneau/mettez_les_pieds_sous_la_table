class PhotoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user == record.restaurant.user
  end
  
  def destroy?
    user == record.restaurant.user
  end

end
