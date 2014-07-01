require 'spec_helper'

describe "water_sources/index" do
  before(:each) do
    assign(:water_sources, [
      stub_model(WaterSource,
        :watershed => "Watershed",
        :name => "Name",
        :city => "City",
        :latitude => "",
        :longitude => "",
        :type => "Type",
        :standard_geographic_code => "Standard Geographic Code"
      ),
      stub_model(WaterSource,
        :watershed => "Watershed",
        :name => "Name",
        :city => "City",
        :latitude => "",
        :longitude => "",
        :type => "Type",
        :standard_geographic_code => "Standard Geographic Code"
      )
    ])
  end

  it "renders a list of water_sources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Watershed".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Standard Geographic Code".to_s, :count => 2
  end
end
