require 'spec_helper'

describe "appointments/index" do
  before(:each) do
    assign(:appointments, [
      stub_model(Appointment,
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
      ),
      stub_model(Appointment,
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
      )
    ])
  end

  it "renders a list of appointments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Extra Tasks".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Pets".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Client Email".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Flat Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Payment".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Payment State".to_s, :count => 2
  end
end
