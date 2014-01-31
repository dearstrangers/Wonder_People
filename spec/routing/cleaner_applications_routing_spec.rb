require "spec_helper"

describe CleanerApplicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/cleaner_applications").should route_to("cleaner_applications#index")
    end

    it "routes to #new" do
      get("/cleaner_applications/new").should route_to("cleaner_applications#new")
    end

    it "routes to #show" do
      get("/cleaner_applications/1").should route_to("cleaner_applications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cleaner_applications/1/edit").should route_to("cleaner_applications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cleaner_applications").should route_to("cleaner_applications#create")
    end

    it "routes to #update" do
      put("/cleaner_applications/1").should route_to("cleaner_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cleaner_applications/1").should route_to("cleaner_applications#destroy", :id => "1")
    end

  end
end
