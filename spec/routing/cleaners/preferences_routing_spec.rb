require "spec_helper"

describe Cleaners::PreferencesController do
  describe "routing" do

    it "routes to #index" do
      get("/cleaners/preferences").should route_to("cleaners/preferences#index")
    end

    it "routes to #new" do
      get("/cleaners/preferences/new").should route_to("cleaners/preferences#new")
    end

    it "routes to #show" do
      get("/cleaners/preferences/1").should route_to("cleaners/preferences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cleaners/preferences/1/edit").should route_to("cleaners/preferences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cleaners/preferences").should route_to("cleaners/preferences#create")
    end

    it "routes to #update" do
      put("/cleaners/preferences/1").should route_to("cleaners/preferences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cleaners/preferences/1").should route_to("cleaners/preferences#destroy", :id => "1")
    end

  end
end
