require 'spec_helper'

describe "cleaners/profiles/show" do
  before(:each) do
    @cleaners_profile = assign(:cleaners_profile, stub_model(Cleaners::Profile,
      :nickname => "Nickname",
      :recent_photo => "Recent Photo",
      :description => "Description",
      :experience => "Experience",
      :wonder_people_chat => "Wonder People Chat",
      :cleaner_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/Recent Photo/)
    rendered.should match(/Description/)
    rendered.should match(/Experience/)
    rendered.should match(/Wonder People Chat/)
    rendered.should match(/1/)
  end
end
