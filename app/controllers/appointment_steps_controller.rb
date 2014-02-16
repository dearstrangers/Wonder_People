class AppointmentStepsController < ApplicationController
  include Wicked::Wizard
  before_action :set_appointment, only: [:update]

  steps :place, :contact_info, :date_time, :payment_info, :review_order


  def show
    @availability = Availability.all
    @availability_by_date = @availability.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

    puts params.inspect
    if params.has_key?(:appointment_id)
      @appointment = Appointment.find(params[:appointment_id])
    else
      @appointment = Appointment.new
    end
    case step
    when :place
    when :contact_info
    when :date_time
    when :payment_info
    when :review_order
    end
    render_wizard
  end

  def update
    case step
    when :contact_info
      @appointment.update(contact_info_params)
    when :date_time
    when :payment_info
    when :review_order
    end
    redirect_to wizard_path(@next_step, {:appointment_id => @appointment.id})
    # render_wizard @appointment
  end

private
  
  def set_appointment
    # params = {:appointment: {:appointment_id: 1}}
    @appointment = Appointment.find(params[:appointment][:appointment_id])
  end  

  def contact_info_params
    params.require(:appointment).permit(:address, :duration, :supplies, :extra_tasks, :size, :rooms, :bathrooms, :pets, :number_of_cleaners, :client_contact_number, :client_whatsapp_number, :client_email, :member_id, :availability_id, :flat_photo, :payment, :state, :payment_state, :area, :date, :laundry, :fridge, :oven, :cabinets, :window, :walls)
  end

end
