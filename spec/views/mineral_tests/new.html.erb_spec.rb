require 'spec_helper'

describe "mineral_tests/new" do
  before(:each) do
    assign(:mineral_test, stub_model(MineralTest,
      :water_source => nil,
      :mineral => nil,
      :measurement => ""
    ).as_new_record)
  end

  it "renders new mineral_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mineral_tests_path, "post" do
      assert_select "input#mineral_test_water_source[name=?]", "mineral_test[water_source]"
      assert_select "input#mineral_test_mineral[name=?]", "mineral_test[mineral]"
      assert_select "input#mineral_test_measurement[name=?]", "mineral_test[measurement]"
    end
  end
end
