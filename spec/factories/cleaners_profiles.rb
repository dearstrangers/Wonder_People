# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cleaners_profile, :class => 'Cleaners::Profile' do
    nickname "MyString"
    recent_photo "MyString"
    description "MyString"
    experience "MyString"
    wonder_people_chat "MyString"
    cleaner_id 1
  end
end
