# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    address "MyString"
    duration "MyString"
    supplies false
    extra_tasks "MyString"
    size 1
    rooms 1
    bathrooms 1
    pets "MyString"
    number_of_cleaners 1
    client_contact_number 1
    client_whatsapp_number 1
    client_email "MyString"
    member_id 1
    availability_id 1
    flat_photo "MyString"
    payment "MyString"
    state "MyString"
    payment_state "MyString"
  end
end
