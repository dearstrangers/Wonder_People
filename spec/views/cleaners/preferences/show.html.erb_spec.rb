require 'spec_helper'

describe "cleaners/preferences/show" do
  before(:each) do
    @cleaners_preference = assign(:cleaners_preference, stub_model(Cleaners::Preference,
      :preferred_time => "Preferred Time",
      :preferred_area => "Preferred Area",
      :pet_preference => "Pet Preference",
      :other_preference => "Other Preference",
      :cleaner_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Preferred Time/)
    rendered.should match(/Preferred Area/)
    rendered.should match(/Pet Preference/)
    rendered.should match(/Other Preference/)
    rendered.should match(/1/)
  end
end
