require 'spec_helper'

describe "appointments/show" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :address => "Address",
      :duration => "Duration",
      :supplies => false,
      :extra_tasks => "Extra Tasks",
      :size => 1,
      :rooms => 2,
      :bathrooms => 3,
      :pets => "Pets",
      :number_of_cleaners => 4,
      :client_contact_number => 5,
      :client_whatsapp_number => 6,
      :client_email => "Client Email",
      :member_id => 7,
      :availability_id => 8,
      :flat_photo => "Flat Photo",
      :payment => "Payment",
      :state => "State",
      :payment_state => "Payment State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/Duration/)
    rendered.should match(/false/)
    rendered.should match(/Extra Tasks/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Pets/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/Client Email/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/Flat Photo/)
    rendered.should match(/Payment/)
    rendered.should match(/State/)
    rendered.should match(/Payment State/)
  end
end
