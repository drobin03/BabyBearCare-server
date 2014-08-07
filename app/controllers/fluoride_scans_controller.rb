class FluorideScansController < ApplicationController
  before_action :set_fluoride_scan, only: [:show, :edit, :update, :destroy]

  # GET /fluoride_scans
  # GET /fluoride_scans.json
  def index
    @infants = current_user.infants
  end

  # GET /fluoride_scans/1
  # GET /fluoride_scans/1.json
  def show
    @fluoride_scan = FluorideScan.find(params[:id])
  end

  # GET /fluoride_scans/new
  def new
    @fluoride_scan = FluorideScan.new
  end

  # GET /fluoride_scans/1/edit
  def edit
  end

  # POST /fluoride_scans
  # POST /fluoride_scans.json
  def create
    @fluoride_scan = FluorideScan.new(fluoride_scan_params)
    if @fluoride_scan.save
      flash[:notice] = "Scan completed successfully"
      redirect_to @fluoride_scan
    else
      render :new
    end
  end

  # PATCH/PUT /fluoride_scans/1
  # PATCH/PUT /fluoride_scans/1.json
  def update
    respond_to do |format|
      if @fluoride_scan.update(fluoride_scan_params)
        format.html { redirect_to @fluoride_scan, notice: 'Fluoride scan was successfully updated.' }
        format.json { render :show, status: :ok, location: @fluoride_scan }
      else
        format.html { render :edit }
        format.json { render json: @fluoride_scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fluoride_scans/1
  # DELETE /fluoride_scans/1.json
  def destroy
    @fluoride_scan.destroy
    respond_to do |format|
      format.html { redirect_to fluoride_scans_url, notice: 'Fluoride scan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fluoride_scan
      @fluoride_scan = FluorideScan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fluoride_scan_params
      params.require(:fluoride_scan).permit(:water_source_id, :water_type, :bar_code, :infant_id)
    end
end
