def initialize(user)
  user ||= User.new

  alias_action :create, :update, :destroy, :to => :crud

  can :crud, User
end
