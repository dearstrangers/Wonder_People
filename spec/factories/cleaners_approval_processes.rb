# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cleaners_approval_process, :class => 'Cleaners::ApprovalProcess' do
    approval_status "MyString"
    approval_date "MyString"
    approved_by "MyString"
    background_check false
    address_proof_photo "MyString"
    id_copy_photo "MyString"
    cleaner_id 1
  end
end
