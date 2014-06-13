require "spec_helper"

describe InfantsController do
  describe "routing" do

    it "routes to #index" do
      get("/infants").should route_to("infants#index")
    end

    it "routes to #new" do
      get("/infants/new").should route_to("infants#new")
    end

    it "routes to #show" do
      get("/infants/1").should route_to("infants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/infants/1/edit").should route_to("infants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/infants").should route_to("infants#create")
    end

    it "routes to #update" do
      put("/infants/1").should route_to("infants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/infants/1").should route_to("infants#destroy", :id => "1")
    end

  end
end
