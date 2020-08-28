class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    user == record.user
  end

  def update?
    user == record.user
  end

  def update_activation?
    user == record.user
  end

  # def destroy?
  #   record.user == user
  # end
end
