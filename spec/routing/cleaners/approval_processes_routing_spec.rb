require "spec_helper"

describe Cleaners::ApprovalProcessesController do
  describe "routing" do

    it "routes to #index" do
      get("/cleaners/approval_processes").should route_to("cleaners/approval_processes#index")
    end

    it "routes to #new" do
      get("/cleaners/approval_processes/new").should route_to("cleaners/approval_processes#new")
    end

    it "routes to #show" do
      get("/cleaners/approval_processes/1").should route_to("cleaners/approval_processes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cleaners/approval_processes/1/edit").should route_to("cleaners/approval_processes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cleaners/approval_processes").should route_to("cleaners/approval_processes#create")
    end

    it "routes to #update" do
      put("/cleaners/approval_processes/1").should route_to("cleaners/approval_processes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cleaners/approval_processes/1").should route_to("cleaners/approval_processes#destroy", :id => "1")
    end

  end
end
