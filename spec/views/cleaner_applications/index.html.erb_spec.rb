require 'spec_helper'

describe "cleaner_applications/index" do
  before(:each) do
    assign(:cleaner_applications, [
      stub_model(CleanerApplication,
        :applicant_legal_name => "Applicant Legal Name",
        :applicant_area => "Applicant Area",
        :applicant_email => "Applicant Email",
        :applicant_contact_number => 1,
        :interview_time => "Interview Time"
      ),
      stub_model(CleanerApplication,
        :applicant_legal_name => "Applicant Legal Name",
        :applicant_area => "Applicant Area",
        :applicant_email => "Applicant Email",
        :applicant_contact_number => 1,
        :interview_time => "Interview Time"
      )
    ])
  end

  it "renders a list of cleaner_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Applicant Legal Name".to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Area".to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Interview Time".to_s, :count => 2
  end
end
