require 'spec_helper'

describe "cleaners/profiles/new" do
  before(:each) do
    assign(:cleaners_profile, stub_model(Cleaners::Profile,
      :nickname => "MyString",
      :recent_photo => "MyString",
      :description => "MyString",
      :experience => "MyString",
      :wonder_people_chat => "MyString",
      :cleaner_id => 1
    ).as_new_record)
  end

  it "renders new cleaners_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cleaners_profiles_path, "post" do
      assert_select "input#cleaners_profile_nickname[name=?]", "cleaners_profile[nickname]"
      assert_select "input#cleaners_profile_recent_photo[name=?]", "cleaners_profile[recent_photo]"
      assert_select "input#cleaners_profile_description[name=?]", "cleaners_profile[description]"
      assert_select "input#cleaners_profile_experience[name=?]", "cleaners_profile[experience]"
      assert_select "input#cleaners_profile_wonder_people_chat[name=?]", "cleaners_profile[wonder_people_chat]"
      assert_select "input#cleaners_profile_cleaner_id[name=?]", "cleaners_profile[cleaner_id]"
    end
  end
end
