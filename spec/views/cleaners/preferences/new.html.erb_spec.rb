require 'spec_helper'

describe "cleaners/preferences/new" do
  before(:each) do
    assign(:cleaners_preference, stub_model(Cleaners::Preference,
      :preferred_time => "MyString",
      :preferred_area => "MyString",
      :pet_preference => "MyString",
      :other_preference => "MyString",
      :cleaner_id => 1
    ).as_new_record)
  end

  it "renders new cleaners_preference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cleaners_preferences_path, "post" do
      assert_select "input#cleaners_preference_preferred_time[name=?]", "cleaners_preference[preferred_time]"
      assert_select "input#cleaners_preference_preferred_area[name=?]", "cleaners_preference[preferred_area]"
      assert_select "input#cleaners_preference_pet_preference[name=?]", "cleaners_preference[pet_preference]"
      assert_select "input#cleaners_preference_other_preference[name=?]", "cleaners_preference[other_preference]"
      assert_select "input#cleaners_preference_cleaner_id[name=?]", "cleaners_preference[cleaner_id]"
    end
  end
end
