require 'spec_helper'

describe "cleaners/approval_processes/index" do
  before(:each) do
    assign(:cleaners_approval_processes, [
      stub_model(Cleaners::ApprovalProcess,
        :approval_status => "Approval Status",
        :approval_date => "Approval Date",
        :approved_by => "Approved By",
        :background_check => false,
        :address_proof_photo => "Address Proof Photo",
        :id_copy_photo => "Id Copy Photo",
        :cleaner_id => 1
      ),
      stub_model(Cleaners::ApprovalProcess,
        :approval_status => "Approval Status",
        :approval_date => "Approval Date",
        :approved_by => "Approved By",
        :background_check => false,
        :address_proof_photo => "Address Proof Photo",
        :id_copy_photo => "Id Copy Photo",
        :cleaner_id => 1
      )
    ])
  end

  it "renders a list of cleaners/approval_processes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Approval Status".to_s, :count => 2
    assert_select "tr>td", :text => "Approval Date".to_s, :count => 2
    assert_select "tr>td", :text => "Approved By".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Address Proof Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Id Copy Photo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
