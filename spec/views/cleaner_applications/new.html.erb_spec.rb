require 'spec_helper'

describe "cleaner_applications/new" do
  before(:each) do
    assign(:cleaner_application, stub_model(CleanerApplication,
      :applicant_legal_name => "MyString",
      :applicant_area => "MyString",
      :applicant_email => "MyString",
      :applicant_contact_number => 1,
      :interview_time => "MyString"
    ).as_new_record)
  end

  it "renders new cleaner_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cleaner_applications_path, "post" do
      assert_select "input#cleaner_application_applicant_legal_name[name=?]", "cleaner_application[applicant_legal_name]"
      assert_select "input#cleaner_application_applicant_area[name=?]", "cleaner_application[applicant_area]"
      assert_select "input#cleaner_application_applicant_email[name=?]", "cleaner_application[applicant_email]"
      assert_select "input#cleaner_application_applicant_contact_number[name=?]", "cleaner_application[applicant_contact_number]"
      assert_select "input#cleaner_application_interview_time[name=?]", "cleaner_application[interview_time]"
    end
  end
end
