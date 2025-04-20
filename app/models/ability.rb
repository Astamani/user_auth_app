class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    if user.admin?
      can :manage, :all
    elsif user.teacher?
      can :read, Student
      can :update, Student
    elsif user.student?
      can :read, Profile, user_id: user.id
      can :update, Profile, user_id: user.id
    end
  end
end
