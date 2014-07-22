class UserSessionsController < ApplicationController
  skip_before_action :require_user
  before_action :require_user, only: :destroy

  # GET /user_sessions/new
  def new
    @user_session = UserSession.new
  end

  # POST /user_sessions
  # POST /user_sessions.json
  def create
    @user_session = UserSession.new(user_session_params)

    @user_session.save
    if @user_session.new_session?
      render :new
    else
      redirect_to root_url
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.json
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to new_user_session_url
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_session_params
      params.require(:user_session).permit(:login, :password, :remember_me)
    end
end
