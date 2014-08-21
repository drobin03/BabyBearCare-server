class MineralsController < ApplicationController
  load_and_authorize_resource
  before_action :set_mineral, only: [:show, :edit, :update, :destroy]

  # GET /minerals
  # GET /minerals.json
  def index
    @minerals = Mineral.all
  end

  # GET /minerals/1
  # GET /minerals/1.json
  def show
  end

  # GET /minerals/new
  def new
    @mineral = Mineral.new
  end

  # GET /minerals/1/edit
  def edit
  end

  # POST /minerals
  # POST /minerals.json
  def create
    @mineral = Mineral.new(mineral_params)

    respond_to do |format|
      if @mineral.save
        format.html { redirect_to @mineral, notice: 'Mineral was successfully created.' }
        format.json { render :show, status: :created, location: @mineral }
      else
        format.html { render :new }
        format.json { render json: @mineral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minerals/1
  # PATCH/PUT /minerals/1.json
  def update
    respond_to do |format|
      if @mineral.update(mineral_params)
        format.html { redirect_to @mineral, notice: 'Mineral was successfully updated.' }
        format.json { render :show, status: :ok, location: @mineral }
      else
        format.html { render :edit }
        format.json { render json: @mineral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minerals/1
  # DELETE /minerals/1.json
  def destroy
    @mineral.destroy
    respond_to do |format|
      format.html { redirect_to minerals_url, notice: 'Mineral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mineral
      @mineral = Mineral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mineral_params
      params.require(:mineral).permit(:name, :max_dosage)
    end
end
