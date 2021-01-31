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

  def edit?
    # If user is the owner of restaurant => true
    # Otherwise => fasle
    # user => current_user
    # record => @castle (argument passed to 'authorize')
    if user == record.user_id
      true
    else
      false
    end
  end
end
