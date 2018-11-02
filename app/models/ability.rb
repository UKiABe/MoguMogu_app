class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin_flag?
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
