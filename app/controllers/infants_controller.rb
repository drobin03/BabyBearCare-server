class InfantsController < ApplicationController

  def new
    @infant = Infant.new
  end

  def create
    @infant = Infant.new(infant_params)

    if @infant.save
      flash[:success] = "Infant created successfully."
    else
      flash[:error] = "An error occurred when we tried to create a new infant."
    end
  end

  private
    def infant_params
      params.require(:infant).permit(
        :first_name, :last_name, :weight, :gender, :date_of_birth,
        :due_date, :birth_weight, :multiple_birth, :user_id )
    end
end
