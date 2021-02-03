class CastlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  #   # If user is the owner of restaurant => true
  #   # Otherwise => fasle
  #   # user => current_user
  #   # record => @castle (argument passed to 'authorize')
  #   if user == record.user
  #     true
  #   else
  #     false
  #   end
  # end
  # Don't need edit since edit in Application_Policy calls update?
  def update?
    user == record.user
  end
end
