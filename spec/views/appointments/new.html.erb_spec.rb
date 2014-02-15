require 'spec_helper'

describe "appointments/new" do
  before(:each) do
    assign(:appointment, stub_model(Appointment,
      :address => "MyString",
      :duration => "MyString",
      :supplies => false,
      :extra_tasks => "MyString",
      :size => 1,
      :rooms => 1,
      :bathrooms => 1,
      :pets => "MyString",
      :number_of_cleaners => 1,
      :client_contact_number => 1,
      :client_whatsapp_number => 1,
      :client_email => "MyString",
      :member_id => 1,
      :availability_id => 1,
      :flat_photo => "MyString",
      :payment => "MyString",
      :state => "MyString",
      :payment_state => "MyString"
    ).as_new_record)
  end

  it "renders new appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", appointments_path, "post" do
      assert_select "input#appointment_address[name=?]", "appointment[address]"
      assert_select "input#appointment_duration[name=?]", "appointment[duration]"
      assert_select "input#appointment_supplies[name=?]", "appointment[supplies]"
      assert_select "input#appointment_extra_tasks[name=?]", "appointment[extra_tasks]"
      assert_select "input#appointment_size[name=?]", "appointment[size]"
      assert_select "input#appointment_rooms[name=?]", "appointment[rooms]"
      assert_select "input#appointment_bathrooms[name=?]", "appointment[bathrooms]"
      assert_select "input#appointment_pets[name=?]", "appointment[pets]"
      assert_select "input#appointment_number_of_cleaners[name=?]", "appointment[number_of_cleaners]"
      assert_select "input#appointment_client_contact_number[name=?]", "appointment[client_contact_number]"
      assert_select "input#appointment_client_whatsapp_number[name=?]", "appointment[client_whatsapp_number]"
      assert_select "input#appointment_client_email[name=?]", "appointment[client_email]"
      assert_select "input#appointment_member_id[name=?]", "appointment[member_id]"
      assert_select "input#appointment_availability_id[name=?]", "appointment[availability_id]"
      assert_select "input#appointment_flat_photo[name=?]", "appointment[flat_photo]"
      assert_select "input#appointment_payment[name=?]", "appointment[payment]"
      assert_select "input#appointment_state[name=?]", "appointment[state]"
      assert_select "input#appointment_payment_state[name=?]", "appointment[payment_state]"
    end
  end
end
