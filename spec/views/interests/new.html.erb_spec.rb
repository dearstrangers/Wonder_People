require 'spec_helper'

describe "interests/new" do
  before(:each) do
    assign(:interest, stub_model(Interest,
      :interest_name => "MyString",
      :interest_email => "MyString",
      :interest_contact_number => 1,
      :interest_area => "MyString"
    ).as_new_record)
  end

  it "renders new interest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interests_path, "post" do
      assert_select "input#interest_interest_name[name=?]", "interest[interest_name]"
      assert_select "input#interest_interest_email[name=?]", "interest[interest_email]"
      assert_select "input#interest_interest_contact_number[name=?]", "interest[interest_contact_number]"
      assert_select "input#interest_interest_area[name=?]", "interest[interest_area]"
    end
  end
end
