# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cleaner_application do
    applicant_legal_name "MyString"
    applicant_area "MyString"
    applicant_email "MyString"
    applicant_contact_number 1
    interview_time "MyString"
  end
end
