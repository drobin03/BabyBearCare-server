class InfantsController < ApplicationController
  respond_to :html, :js
  before_filter :load_infants

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

  def delete
    @infant = Infant.find(params[:infant_id])
  end

  def destroy
    @infant = Infant.find(params[:id])  
    @infant.destroy
  end

  private
    def infant_params
      params.require(:infant).permit(
        :first_name, :last_name, :weight, :gender, :date_of_birth,
        :due_date, :birth_weight, :multiple_birth, :user_id )
    end

    def load_infants
      @infants = current_user.infants
    end
end
