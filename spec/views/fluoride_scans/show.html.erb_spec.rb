require 'spec_helper'

describe "fluoride_scans/show" do
  before(:each) do
    @fluoride_scan = assign(:fluoride_scan, stub_model(FluorideScan,
      :location => 1,
      :water_type => "Water Type",
      :bar_code => "Bar Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Water Type/)
    rendered.should match(/Bar Code/)
  end
end
