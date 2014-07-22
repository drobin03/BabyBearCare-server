require "spec_helper"

describe FluorideScansController do
  describe "routing" do

    it "routes to #index" do
      get("/fluoride_scans").should route_to("fluoride_scans#index")
    end

    it "routes to #new" do
      get("/fluoride_scans/new").should route_to("fluoride_scans#new")
    end

    it "routes to #show" do
      get("/fluoride_scans/1").should route_to("fluoride_scans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fluoride_scans/1/edit").should route_to("fluoride_scans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fluoride_scans").should route_to("fluoride_scans#create")
    end

    it "routes to #update" do
      put("/fluoride_scans/1").should route_to("fluoride_scans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fluoride_scans/1").should route_to("fluoride_scans#destroy", :id => "1")
    end

  end
end
