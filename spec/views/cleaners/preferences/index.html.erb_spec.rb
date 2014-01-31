require 'spec_helper'

describe "cleaners/preferences/index" do
  before(:each) do
    assign(:cleaners_preferences, [
      stub_model(Cleaners::Preference,
        :preferred_time => "Preferred Time",
        :preferred_area => "Preferred Area",
        :pet_preference => "Pet Preference",
        :other_preference => "Other Preference",
        :cleaner_id => 1
      ),
      stub_model(Cleaners::Preference,
        :preferred_time => "Preferred Time",
        :preferred_area => "Preferred Area",
        :pet_preference => "Pet Preference",
        :other_preference => "Other Preference",
        :cleaner_id => 1
      )
    ])
  end

  it "renders a list of cleaners/preferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Preferred Time".to_s, :count => 2
    assert_select "tr>td", :text => "Preferred Area".to_s, :count => 2
    assert_select "tr>td", :text => "Pet Preference".to_s, :count => 2
    assert_select "tr>td", :text => "Other Preference".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
