class TreatmentChemicalsController < ApplicationController
  before_action :set_treatment_chemical, only: [:show, :edit, :update, :destroy]

  # GET /treatment_chemicals
  # GET /treatment_chemicals.json
  def index
    @treatment_chemicals = TreatmentChemical.all
  end

  # GET /treatment_chemicals/1
  # GET /treatment_chemicals/1.json
  def show
  end

  # GET /treatment_chemicals/new
  def new
    @treatment_chemical = TreatmentChemical.new
  end

  # GET /treatment_chemicals/1/edit
  def edit
  end

  # POST /treatment_chemicals
  # POST /treatment_chemicals.json
  def create
    @treatment_chemical = TreatmentChemical.new(treatment_chemical_params)

    respond_to do |format|
      if @treatment_chemical.save
        format.html { redirect_to @treatment_chemical, notice: 'Treatment chemical was successfully created.' }
        format.json { render :show, status: :created, location: @treatment_chemical }
      else
        format.html { render :new }
        format.json { render json: @treatment_chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatment_chemicals/1
  # PATCH/PUT /treatment_chemicals/1.json
  def update
    respond_to do |format|
      if @treatment_chemical.update(treatment_chemical_params)
        format.html { redirect_to @treatment_chemical, notice: 'Treatment chemical was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment_chemical }
      else
        format.html { render :edit }
        format.json { render json: @treatment_chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatment_chemicals/1
  # DELETE /treatment_chemicals/1.json
  def destroy
    @treatment_chemical.destroy
    respond_to do |format|
      format.html { redirect_to treatment_chemicals_url, notice: 'Treatment chemical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_chemical
      @treatment_chemical = TreatmentChemical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_chemical_params
      params.require(:treatment_chemical).permit(:name)
    end
end
