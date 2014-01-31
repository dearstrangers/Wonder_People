require "spec_helper"

describe Cleaners::ProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/cleaners/profiles").should route_to("cleaners/profiles#index")
    end

    it "routes to #new" do
      get("/cleaners/profiles/new").should route_to("cleaners/profiles#new")
    end

    it "routes to #show" do
      get("/cleaners/profiles/1").should route_to("cleaners/profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cleaners/profiles/1/edit").should route_to("cleaners/profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cleaners/profiles").should route_to("cleaners/profiles#create")
    end

    it "routes to #update" do
      put("/cleaners/profiles/1").should route_to("cleaners/profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cleaners/profiles/1").should route_to("cleaners/profiles#destroy", :id => "1")
    end

  end
end
