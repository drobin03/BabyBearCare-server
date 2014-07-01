require 'spec_helper'

describe "water_sources/edit" do
  before(:each) do
    @water_source = assign(:water_source, stub_model(WaterSource,
      :watershed => "MyString",
      :name => "MyString",
      :city => "MyString",
      :latitude => "",
      :longitude => "",
      :type => "",
      :standard_geographic_code => "MyString"
    ))
  end

  it "renders the edit water_source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", water_source_path(@water_source), "post" do
      assert_select "input#water_source_watershed[name=?]", "water_source[watershed]"
      assert_select "input#water_source_name[name=?]", "water_source[name]"
      assert_select "input#water_source_city[name=?]", "water_source[city]"
      assert_select "input#water_source_latitude[name=?]", "water_source[latitude]"
      assert_select "input#water_source_longitude[name=?]", "water_source[longitude]"
      assert_select "input#water_source_type[name=?]", "water_source[type]"
      assert_select "input#water_source_standard_geographic_code[name=?]", "water_source[standard_geographic_code]"
    end
  end
end
