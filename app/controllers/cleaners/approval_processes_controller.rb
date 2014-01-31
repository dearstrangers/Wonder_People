class Cleaners::ApprovalProcessesController < ApplicationController
  before_action :set_cleaners_approval_process, only: [:show, :edit, :update, :destroy]

  # GET /cleaners/approval_processes
  # GET /cleaners/approval_processes.json
  def index
    @cleaners_approval_processes = Cleaners::ApprovalProcess.all
  end

  # GET /cleaners/approval_processes/1
  # GET /cleaners/approval_processes/1.json
  def show
  end

  # GET /cleaners/approval_processes/new
  def new
    @cleaners_approval_process = Cleaners::ApprovalProcess.new
  end

  # GET /cleaners/approval_processes/1/edit
  def edit
  end

  # POST /cleaners/approval_processes
  # POST /cleaners/approval_processes.json
  def create
    @cleaners_approval_process = Cleaners::ApprovalProcess.new(cleaners_approval_process_params)

    respond_to do |format|
      if @cleaners_approval_process.save
        format.html { redirect_to @cleaners_approval_process, notice: 'Approval process was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cleaners_approval_process }
      else
        format.html { render action: 'new' }
        format.json { render json: @cleaners_approval_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaners/approval_processes/1
  # PATCH/PUT /cleaners/approval_processes/1.json
  def update
    respond_to do |format|
      if @cleaners_approval_process.update(cleaners_approval_process_params)
        format.html { redirect_to @cleaners_approval_process, notice: 'Approval process was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaners_approval_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaners/approval_processes/1
  # DELETE /cleaners/approval_processes/1.json
  def destroy
    @cleaners_approval_process.destroy
    respond_to do |format|
      format.html { redirect_to cleaners_approval_processes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaners_approval_process
      @cleaners_approval_process = Cleaners::ApprovalProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaners_approval_process_params
      params.require(:cleaners_approval_process).permit(:approval_status, :approval_date, :approved_by, :background_check, :address_proof_photo, :id_copy_photo, :cleaner_id)
    end
end
