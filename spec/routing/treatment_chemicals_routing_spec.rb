require "spec_helper"

describe TreatmentChemicalsController do
  describe "routing" do

    it "routes to #index" do
      get("/treatment_chemicals").should route_to("treatment_chemicals#index")
    end

    it "routes to #new" do
      get("/treatment_chemicals/new").should route_to("treatment_chemicals#new")
    end

    it "routes to #show" do
      get("/treatment_chemicals/1").should route_to("treatment_chemicals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/treatment_chemicals/1/edit").should route_to("treatment_chemicals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/treatment_chemicals").should route_to("treatment_chemicals#create")
    end

    it "routes to #update" do
      put("/treatment_chemicals/1").should route_to("treatment_chemicals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/treatment_chemicals/1").should route_to("treatment_chemicals#destroy", :id => "1")
    end

  end
end
