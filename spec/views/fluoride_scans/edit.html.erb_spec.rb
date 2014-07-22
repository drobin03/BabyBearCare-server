require 'spec_helper'

describe "fluoride_scans/edit" do
  before(:each) do
    @fluoride_scan = assign(:fluoride_scan, stub_model(FluorideScan,
      :location => 1,
      :water_type => "MyString",
      :bar_code => "MyString"
    ))
  end

  it "renders the edit fluoride_scan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fluoride_scan_path(@fluoride_scan), "post" do
      assert_select "input#fluoride_scan_location[name=?]", "fluoride_scan[location]"
      assert_select "input#fluoride_scan_water_type[name=?]", "fluoride_scan[water_type]"
      assert_select "input#fluoride_scan_bar_code[name=?]", "fluoride_scan[bar_code]"
    end
  end
end
