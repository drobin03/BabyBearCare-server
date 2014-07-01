class DashboardController < ApplicationController
  def index
    @users = User.all
  end

  def show
    case params[:id]
    when 'check'
      @locations = [{ id: "1", name: "Waterloo,ON" }, { id: "2", name: "Guelph,ON" }]
    end
  end
end
