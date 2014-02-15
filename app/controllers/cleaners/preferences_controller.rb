class Cleaners::PreferencesController < ApplicationController
  before_action :set_cleaners_preference, only: [:show, :edit, :update, :destroy]

  # GET /cleaners/preferences
  # GET /cleaners/preferences.json
  def index
    @cleaners_preferences = Cleaners::Preference.all
  end

  # GET /cleaners/preferences/1
  # GET /cleaners/preferences/1.json
  def show
  end

  # GET /cleaners/preferences/new
  def new
    @cleaners_preference = Cleaners::Preference.new
  end

  # GET /cleaners/preferences/1/edit
  def edit
  end

  # POST /cleaners/preferences
  # POST /cleaners/preferences.json
  def create
    @cleaners_preference = Cleaners::Preference.new(cleaners_preference_params)

    respond_to do |format|
      if @cleaners_preference.save
        format.html { redirect_to @cleaners_preference, notice: 'Preference was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cleaners_preference }
      else
        format.html { render action: 'new' }
        format.json { render json: @cleaners_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaners/preferences/1
  # PATCH/PUT /cleaners/preferences/1.json
  def update
    respond_to do |format|
      if @cleaners_preference.update(cleaners_preference_params)
        format.html { redirect_to @cleaners_preference, notice: 'Preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaners_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaners/preferences/1
  # DELETE /cleaners/preferences/1.json
  def destroy
    @cleaners_preference.destroy
    respond_to do |format|
      format.html { redirect_to cleaners_preferences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaners_preference
      @cleaners_preference = Cleaners::Preference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaners_preference_params
      params.require(:cleaners_preference).permit(:preferred_time, :preferred_area, :pet_preference, :other_preference).merge(cleaner_id: current_cleaner.id)
    end
end
