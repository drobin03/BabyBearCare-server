require 'spec_helper'

describe "fluoride_scans/index" do
  before(:each) do
    assign(:fluoride_scans, [
      stub_model(FluorideScan,
        :location => 1,
        :water_type => "Water Type",
        :bar_code => "Bar Code"
      ),
      stub_model(FluorideScan,
        :location => 1,
        :water_type => "Water Type",
        :bar_code => "Bar Code"
      )
    ])
  end

  it "renders a list of fluoride_scans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Water Type".to_s, :count => 2
    assert_select "tr>td", :text => "Bar Code".to_s, :count => 2
  end
end
