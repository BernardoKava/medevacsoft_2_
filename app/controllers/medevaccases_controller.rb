class MedevaccasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_medevaccase, only: [:show, :edit, :update, :destroy]

  # GET /medevaccases
  # GET /medevaccases.json
  def index
    @title = '[My Case History - Open & Closed Cases]'
    @user = current_user.email
    @medevaccases = Medevaccase.where(email: @user)

  end

  def dispatcherindex
    @medevaccases = Medevaccase.all
    render action: :index
  end

  def dispatcheropencases
    @title = '[Open Cases - Dispatcher View]'
    @elem = 'No'
    @medevaccases = Medevaccase.where(missioncomplete: @elem)
    render action: :index
  end

  def opencases
    @title = '[Open Cases]'
    @elem = 'No'
    @user = current_user.email
    @medevaccases = Medevaccase.where(missioncomplete: @elem, email: @user)
    render action: :index
  end

  def closedcases
    @title = '[Closed Cases]'
    @elem = 'Yes'
    @user = current_user.email
    @medevaccases = Medevaccase.where(missioncomplete: @elem, email: @user)
    render action: :index
  end

  # GET /medevaccases/1
  # GET /medevaccases/1.json
  def show

  end

  # GET /medevaccases/new
  def new
    @medevaccase = current_user.medevaccases.new

  end

  def distribution
    @title = '[Manager View]'
    @casebycompany = current_user.companyalias
    @medevaccases = Medevaccase.where(caseownercompany: @casebycompany)
    render action: :index
  end

  # GET /medevaccases/1/edit
  def edit
  end

  # POST /medevaccases
  # POST /medevaccases.json
  def create
    @medevaccase = current_user.medevaccases.new(medevaccase_params)


    respond_to do |format|
      if @medevaccase.save
        format.html { redirect_to @medevaccase, notice: 'Medevaccase was successfully created.' }
        format.json { render :show, status: :created, location: @medevaccase }
      else
        format.html { render :new }
        format.json { render json: @medevaccase.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /medevaccases/1
  # PATCH/PUT /medevaccases/1.json
  def update
    respond_to do |format|
      if @medevaccase.update(medevaccase_params)
        format.html { redirect_to @medevaccase, notice: 'Medevaccase was successfully updated.' }
        format.json { render :show, status: :ok, location: @medevaccase }
      else
        format.html { render :edit }
        format.json { render json: @medevaccase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medevaccases/1
  # DELETE /medevaccases/1.json
  def destroy
    @medevaccase.destroy
    respond_to do |format|
      format.html { redirect_to medevaccases_url, notice: 'Medevaccase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medevaccase
      @medevaccase = Medevaccase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medevaccase_params
      params.require(:medevaccase).permit(:catName,
                                          :startDate, :completionDate, :toCountry, :fromCountry, :hospital_id,
                                          :rhospital_id,
                                          :notes, :missioncomplete,
                                          :email, :caseownercompany,
                                          patients_attributes: [:id, :fname, :lname, :dob, :diagnosis,
                                                                :treatment, :phone, :email, :nationality, :_destroy],
                                          accompanyingpeople_attributes: [:id, :name, :phone, :email, :nationality,
                                                                          :relationship, :patientconsent, :_destroy],
                                          contactpeople_attributes:[:id, :name, :phone, :email,
                                                                    :relationship, :patientconsent, :medevaccase_id, :_destroy],
                                          stakeholders_attributes: [:id, :name, :phone, :email, :relationship,
                                                                    :patientconsent, :_destroy],
                                          casenotes_attributes: [:id, :casephase, :notes, :_destroy])
    end
end
