require 'spec_helper'

describe "interests/index" do
  before(:each) do
    assign(:interests, [
      stub_model(Interest,
        :interest_name => "Interest Name",
        :interest_email => "Interest Email",
        :interest_contact_number => 1,
        :interest_area => "Interest Area"
      ),
      stub_model(Interest,
        :interest_name => "Interest Name",
        :interest_email => "Interest Email",
        :interest_contact_number => 1,
        :interest_area => "Interest Area"
      )
    ])
  end

  it "renders a list of interests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interest Name".to_s, :count => 2
    assert_select "tr>td", :text => "Interest Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Interest Area".to_s, :count => 2
  end
end
