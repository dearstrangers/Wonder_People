require 'spec_helper'

describe "cleaners/approval_processes/edit" do
  before(:each) do
    @cleaners_approval_process = assign(:cleaners_approval_process, stub_model(Cleaners::ApprovalProcess,
      :approval_status => "MyString",
      :approval_date => "MyString",
      :approved_by => "MyString",
      :background_check => false,
      :address_proof_photo => "MyString",
      :id_copy_photo => "MyString",
      :cleaner_id => 1
    ))
  end

  it "renders the edit cleaners_approval_process form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cleaners_approval_process_path(@cleaners_approval_process), "post" do
      assert_select "input#cleaners_approval_process_approval_status[name=?]", "cleaners_approval_process[approval_status]"
      assert_select "input#cleaners_approval_process_approval_date[name=?]", "cleaners_approval_process[approval_date]"
      assert_select "input#cleaners_approval_process_approved_by[name=?]", "cleaners_approval_process[approved_by]"
      assert_select "input#cleaners_approval_process_background_check[name=?]", "cleaners_approval_process[background_check]"
      assert_select "input#cleaners_approval_process_address_proof_photo[name=?]", "cleaners_approval_process[address_proof_photo]"
      assert_select "input#cleaners_approval_process_id_copy_photo[name=?]", "cleaners_approval_process[id_copy_photo]"
      assert_select "input#cleaners_approval_process_cleaner_id[name=?]", "cleaners_approval_process[cleaner_id]"
    end
  end
end
