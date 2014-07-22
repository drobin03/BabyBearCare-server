require 'spec_helper'

describe "treatment_chemicals/show" do
  before(:each) do
    @treatment_chemical = assign(:treatment_chemical, stub_model(TreatmentChemical,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
