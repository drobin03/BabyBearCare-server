class DashboardController < ApplicationController
  def index
    @users = User.all
  end

  def show
    case params[:id]
    when 'check'
    end
  end
end
