require 'spec_helper'

describe "cleaner_applications/show" do
  before(:each) do
    @cleaner_application = assign(:cleaner_application, stub_model(CleanerApplication,
      :applicant_legal_name => "Applicant Legal Name",
      :applicant_area => "Applicant Area",
      :applicant_email => "Applicant Email",
      :applicant_contact_number => 1,
      :interview_time => "Interview Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Applicant Legal Name/)
    rendered.should match(/Applicant Area/)
    rendered.should match(/Applicant Email/)
    rendered.should match(/1/)
    rendered.should match(/Interview Time/)
  end
end
