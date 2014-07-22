require 'spec_helper'

describe "treatment_chemicals/index" do
  before(:each) do
    assign(:treatment_chemicals, [
      stub_model(TreatmentChemical,
        :name => "Name"
      ),
      stub_model(TreatmentChemical,
        :name => "Name"
      )
    ])
  end

  it "renders a list of treatment_chemicals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
