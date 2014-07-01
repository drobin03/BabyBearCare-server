class WaterSourcesController < ApplicationController
  before_action :set_water_source, only: [:show, :edit, :update, :destroy]

  # GET /water_sources
  # GET /water_sources.json
  def index
    @water_sources = WaterSource.all
  end

  # GET /water_sources/1
  # GET /water_sources/1.json
  def show
  end

  # GET /water_sources/new
  def new
    @water_source = WaterSource.new
  end

  # GET /water_sources/1/edit
  def edit
  end

  # POST /water_sources
  # POST /water_sources.json
  def create
    @water_source = WaterSource.new(water_source_params)

    respond_to do |format|
      if @water_source.save
        format.html { redirect_to @water_source, notice: 'Water source was successfully created.' }
        format.json { render :show, status: :created, location: @water_source }
      else
        format.html { render :new }
        format.json { render json: @water_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_sources/1
  # PATCH/PUT /water_sources/1.json
  def update
    respond_to do |format|
      if @water_source.update(water_source_params)
        format.html { redirect_to @water_source, notice: 'Water source was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_source }
      else
        format.html { render :edit }
        format.json { render json: @water_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_sources/1
  # DELETE /water_sources/1.json
  def destroy
    @water_source.destroy
    respond_to do |format|
      format.html { redirect_to water_sources_url, notice: 'Water source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_source
      @water_source = WaterSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_source_params
      params.require(:water_source).permit(:watershed, :name, :city, :latitude, :longitude, :type, :standard_geographic_code)
    end
end
