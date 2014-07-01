require "spec_helper"

describe WaterSourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/water_sources").should route_to("water_sources#index")
    end

    it "routes to #new" do
      get("/water_sources/new").should route_to("water_sources#new")
    end

    it "routes to #show" do
      get("/water_sources/1").should route_to("water_sources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/water_sources/1/edit").should route_to("water_sources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/water_sources").should route_to("water_sources#create")
    end

    it "routes to #update" do
      put("/water_sources/1").should route_to("water_sources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/water_sources/1").should route_to("water_sources#destroy", :id => "1")
    end

  end
end
