class Admins::DashboardController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  
  def index
    @number_of_messages = Message.count
    @number_of_cleaners = Cleaner.count
    @number_of_interest = Interest.count
    @number_of_appointments = Appointment.count
    @number_of_cleaner_applications = CleanerApplication.count
    @number_of_availability = Availability.count
    @all_cleaners = Cleaner.all
    @all_messages = Message.all
    @all_interest = Interest.all
    @all_appointments = Appointment.all
    @all_cleaner_applications = CleanerApplication.all
    @all_availability = Availability.all
  end
end