class DashboardController < ApplicationController
  def home
    @users = User.all
    @user_session = UserSession.new if @user_session.nil?
  end
  def about
  end
end
