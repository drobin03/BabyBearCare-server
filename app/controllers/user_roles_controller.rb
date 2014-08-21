class UserRolesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @users = User.includes(:roles)
    @user_roles = UserRole.includes(:user).order('user_id')
  end

end
