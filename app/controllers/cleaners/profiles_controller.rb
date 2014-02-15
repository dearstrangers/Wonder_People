class Cleaners::ProfilesController < ApplicationController
  before_action :set_cleaners_profile, only: [:show, :edit, :update, :destroy]

  # GET /cleaners/profiles
  # GET /cleaners/profiles.json
  def index
    @cleaners_profiles = Cleaners::Profile.all
  end

  # GET /cleaners/profiles/1
  # GET /cleaners/profiles/1.json
  def show
  end

  # GET /cleaners/profiles/new
  def new
    @cleaners_profile = Cleaners::Profile.new
  end

  # GET /cleaners/profiles/1/edit
  def edit
  end

  # POST /cleaners/profiles
  # POST /cleaners/profiles.json
  def create
    @cleaners_profile = Cleaners::Profile.new(cleaners_profile_params)

    respond_to do |format|
      if @cleaners_profile.save
        format.html { redirect_to after_signup_path(:preference) }
        format.json { render action: 'show', status: :created, location: @cleaners_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @cleaners_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaners/profiles/1
  # PATCH/PUT /cleaners/profiles/1.json
  def update
    respond_to do |format|
      if @cleaners_profile.update(cleaners_profile_params)
        format.html { redirect_to @cleaners_profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaners_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaners/profiles/1
  # DELETE /cleaners/profiles/1.json
  def destroy
    @cleaners_profile.destroy
    respond_to do |format|
      format.html { redirect_to cleaners_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaners_profile
      @cleaners_profile = Cleaners::Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaners_profile_params
      params.require(:cleaners_profile).permit(:nickname, :recent_photo, :description, :experience, :wonder_people_chat).merge(cleaner_id: current_cleaner.id)
    end
end
