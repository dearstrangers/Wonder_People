# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    messager_email "MyString"
    topic "MyString"
    message_id 1
    content "MyText"
    replied false
    admin_id 1
  end
end
