require "spec_helper"

describe MineralTestsController do
  describe "routing" do

    it "routes to #index" do
      get("/mineral_tests").should route_to("mineral_tests#index")
    end

    it "routes to #new" do
      get("/mineral_tests/new").should route_to("mineral_tests#new")
    end

    it "routes to #show" do
      get("/mineral_tests/1").should route_to("mineral_tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mineral_tests/1/edit").should route_to("mineral_tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mineral_tests").should route_to("mineral_tests#create")
    end

    it "routes to #update" do
      put("/mineral_tests/1").should route_to("mineral_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mineral_tests/1").should route_to("mineral_tests#destroy", :id => "1")
    end

  end
end
