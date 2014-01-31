# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cleaners_preference, :class => 'Cleaners::Preference' do
    preferred_time "MyString"
    preferred_area "MyString"
    pet_preference "MyString"
    other_preference "MyString"
    cleaner_id 1
  end
end
