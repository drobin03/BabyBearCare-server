require 'spec_helper'

describe "treatments/index" do
  before(:each) do
    assign(:treatments, [
      stub_model(Treatment,
        :water_source => nil,
        :treatment_chemical => nil
      ),
      stub_model(Treatment,
        :water_source => nil,
        :treatment_chemical => nil
      )
    ])
  end

  it "renders a list of treatments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
