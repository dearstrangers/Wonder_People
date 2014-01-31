require 'spec_helper'

describe "Cleaners::ApprovalProcesses" do
  describe "GET /cleaners_approval_processes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cleaners_approval_processes_path
      response.status.should be(200)
    end
  end
end
