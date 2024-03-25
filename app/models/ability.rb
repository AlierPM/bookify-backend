# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # No guest access
    return unless user.present?

    # Define abilities based on user roles or permissions
    if user.admin?
      can :manage, :all
    else
      can [:read, :create, :update, :destroy], Favorite
      can [:read, :create, :update, :destroy], Rental_Request
      can :read, Book
      cannot [:create, :update, :destroy], Book
      cannot [:read, :create, :update, :destroy], User
    end
  end
end

