require 'spec_helper'

describe "interests/show" do
  before(:each) do
    @interest = assign(:interest, stub_model(Interest,
      :interest_name => "Interest Name",
      :interest_email => "Interest Email",
      :interest_contact_number => 1,
      :interest_area => "Interest Area"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Interest Name/)
    rendered.should match(/Interest Email/)
    rendered.should match(/1/)
    rendered.should match(/Interest Area/)
  end
end
