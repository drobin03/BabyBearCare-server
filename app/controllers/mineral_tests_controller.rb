class MineralTestsController < ApplicationController
  before_action :set_mineral_test, only: [:show, :edit, :update, :destroy]

  # GET /mineral_tests
  # GET /mineral_tests.json
  def index
    @mineral_tests = MineralTest.all
  end

  # GET /mineral_tests/1
  # GET /mineral_tests/1.json
  def show
  end

  # GET /mineral_tests/new
  def new
    @mineral_test = MineralTest.new
  end

  # GET /mineral_tests/1/edit
  def edit
  end

  # POST /mineral_tests
  # POST /mineral_tests.json
  def create
    @mineral_test = MineralTest.new(mineral_test_params)

    respond_to do |format|
      if @mineral_test.save
        format.html { redirect_to @mineral_test, notice: 'Mineral test was successfully created.' }
        format.json { render :show, status: :created, location: @mineral_test }
      else
        format.html { render :new }
        format.json { render json: @mineral_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mineral_tests/1
  # PATCH/PUT /mineral_tests/1.json
  def update
    respond_to do |format|
      if @mineral_test.update(mineral_test_params)
        format.html { redirect_to @mineral_test, notice: 'Mineral test was successfully updated.' }
        format.json { render :show, status: :ok, location: @mineral_test }
      else
        format.html { render :edit }
        format.json { render json: @mineral_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mineral_tests/1
  # DELETE /mineral_tests/1.json
  def destroy
    @mineral_test.destroy
    respond_to do |format|
      format.html { redirect_to mineral_tests_url, notice: 'Mineral test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mineral_test
      @mineral_test = MineralTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mineral_test_params
      params.require(:mineral_test).permit(:water_source_id, :mineral_id, :test_date, :measurement)
    end
end
