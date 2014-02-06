class CleanerApplicationsController < ApplicationController
  before_action :set_cleaner_application, only: [:show, :edit, :update, :destroy]
  layout 'admin', :only => [:index]
  # GET /cleaner_applications
  # GET /cleaner_applications.json
  def index
    @cleaner_applications = CleanerApplication.all
  end

  # GET /cleaner_applications/1
  # GET /cleaner_applications/1.json
  def show
  end

  # GET /cleaner_applications/new
  def new
    @cleaner_application = CleanerApplication.new
  end

  # GET /cleaner_applications/1/edit
  def edit
  end

  # POST /cleaner_applications
  # POST /cleaner_applications.json
  def create
    @cleaner_application = CleanerApplication.new(cleaner_application_params)

    respond_to do |format|
      if @cleaner_application.save
        format.html { redirect_to @cleaner_application, notice: 'Cleaner application was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cleaner_application }
      else
        format.html { render action: 'new' }
        format.json { render json: @cleaner_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaner_applications/1
  # PATCH/PUT /cleaner_applications/1.json
  def update
    respond_to do |format|
      if @cleaner_application.update(cleaner_application_params)
        format.html { redirect_to @cleaner_application, notice: 'Cleaner application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaner_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaner_applications/1
  # DELETE /cleaner_applications/1.json
  def destroy
    @cleaner_application.destroy
    respond_to do |format|
      format.html { redirect_to cleaner_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaner_application
      @cleaner_application = CleanerApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaner_application_params
      params.require(:cleaner_application).permit(:applicant_legal_name, :applicant_area, :applicant_email, :applicant_contact_number, :interview_time)
    end
end
