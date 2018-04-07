class RhospitalsController < ApplicationController
  before_action :set_rhospital, only: [:show, :edit, :update, :destroy]

  # GET /rhospitals
  # GET /rhospitals.json
  def index
    @rhospitals = Rhospital.all
  end

  # GET /rhospitals/1
  # GET /rhospitals/1.json
  def show
  end

  # GET /rhospitals/new
  def new
    @rhospital = Rhospital.new
  end

  # GET /rhospitals/1/edit
  def edit
  end

  # POST /rhospitals
  # POST /rhospitals.json
  def create
    @rhospital = Rhospital.new(rhospital_params)

    respond_to do |format|
      if @rhospital.save
        format.html { redirect_to @rhospital, notice: 'Rhospital was successfully created.' }
        format.json { render :show, status: :created, location: @rhospital }
      else
        format.html { render :new }
        format.json { render json: @rhospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rhospitals/1
  # PATCH/PUT /rhospitals/1.json
  def update
    respond_to do |format|
      if @rhospital.update(rhospital_params)
        format.html { redirect_to @rhospital, notice: 'Rhospital was successfully updated.' }
        format.json { render :show, status: :ok, location: @rhospital }
      else
        format.html { render :edit }
        format.json { render json: @rhospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhospitals/1
  # DELETE /rhospitals/1.json
  def destroy
    @rhospital.destroy
    respond_to do |format|
      format.html { redirect_to rhospitals_url, notice: 'Rhospital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rhospital
      @rhospital = Rhospital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rhospital_params
      params.require(:rhospital).permit(:name, :address, :country, :phone, :email, :info)
    end
end
