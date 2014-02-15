class AfterSignupController < ApplicationController
  include Wicked::Wizard
  
  steps :profile, :preference

  def show
  	@cleaner = current_cleaner

  	case step
  	when :profile
	    @cleaners_profile = Cleaners::Profile.new
    when :preference
      @cleaners_preference = Cleaners::Preference.new
  	end
  	render_wizard
  end

# private
#   def cleaners_profile_params
#       params.require(:cleaners_profile).permit(:nickname, :recent_photo, :description, :experience, :wonder_people_chat).merge(cleaner_id: current_cleaner.id)
#   end

  

end
