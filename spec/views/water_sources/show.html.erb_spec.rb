require 'spec_helper'

describe "water_sources/show" do
  before(:each) do
    @water_source = assign(:water_source, stub_model(WaterSource,
      :watershed => "Watershed",
      :name => "Name",
      :city => "City",
      :latitude => "",
      :longitude => "",
      :type => "Type",
      :standard_geographic_code => "Standard Geographic Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Watershed/)
    rendered.should match(/Name/)
    rendered.should match(/City/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Type/)
    rendered.should match(/Standard Geographic Code/)
  end
end
