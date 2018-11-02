class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin_flag?
      can :manage, :all
    end
  end
end
