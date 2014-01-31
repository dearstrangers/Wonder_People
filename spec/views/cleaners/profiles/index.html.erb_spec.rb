require 'spec_helper'

describe "cleaners/profiles/index" do
  before(:each) do
    assign(:cleaners_profiles, [
      stub_model(Cleaners::Profile,
        :nickname => "Nickname",
        :recent_photo => "Recent Photo",
        :description => "Description",
        :experience => "Experience",
        :wonder_people_chat => "Wonder People Chat",
        :cleaner_id => 1
      ),
      stub_model(Cleaners::Profile,
        :nickname => "Nickname",
        :recent_photo => "Recent Photo",
        :description => "Description",
        :experience => "Experience",
        :wonder_people_chat => "Wonder People Chat",
        :cleaner_id => 1
      )
    ])
  end

  it "renders a list of cleaners/profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Recent Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Experience".to_s, :count => 2
    assert_select "tr>td", :text => "Wonder People Chat".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
