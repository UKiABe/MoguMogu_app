class Ability
  include CanCan::Ability

  def initialize(user)
    cannot :manage, :all

    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      cannot :manage, ActiveAdmin::Page # roleがadmin以外であればactiveadminの各種ページにアクセス出来ないようにした
    end
  end
end
