class InfantsController < ApplicationController
  respond_to :html, :js
  before_filter :load_infants

  def new
    @infant = Infant.new
  end

  def create
    debugger
    @infant = Infant.new(infant_params)

    if @infant.save
      flash[:success] = "Infant created successfully."
    else
      flash[:error] = "An error occurred when we tried to create a new infant."
    end
  end

  def edit
    @infant = Infant.find(params[:id])
  end

  def update
    @infant = Infant.find(params[:id])
    if @infant.update(infant_params)
      flash[:success] = "Infant updated successfully."
    else
      flash[:error] = "An error occurred while attempting to update the infant."
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
        :due_date, :birth_weight, :multiple_birth, :user_id, :daily_intake )
    end

    def load_infants
      @infants = current_user.infants
    end
end
