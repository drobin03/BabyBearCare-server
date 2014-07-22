class DashboardController < ApplicationController
  def index
    @users = User.all
  end

  def show
    case params[:id]
    when 'check'
      @locations = ["Waterloo", "Guelph"]
    end
  end
end
