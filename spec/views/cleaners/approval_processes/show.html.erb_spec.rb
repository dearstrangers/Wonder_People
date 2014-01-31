require 'spec_helper'

describe "cleaners/approval_processes/show" do
  before(:each) do
    @cleaners_approval_process = assign(:cleaners_approval_process, stub_model(Cleaners::ApprovalProcess,
      :approval_status => "Approval Status",
      :approval_date => "Approval Date",
      :approved_by => "Approved By",
      :background_check => false,
      :address_proof_photo => "Address Proof Photo",
      :id_copy_photo => "Id Copy Photo",
      :cleaner_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Approval Status/)
    rendered.should match(/Approval Date/)
    rendered.should match(/Approved By/)
    rendered.should match(/false/)
    rendered.should match(/Address Proof Photo/)
    rendered.should match(/Id Copy Photo/)
    rendered.should match(/1/)
  end
end
