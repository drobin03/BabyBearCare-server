require 'spec_helper'

describe "mineral_tests/show" do
  before(:each) do
    @mineral_test = assign(:mineral_test, stub_model(MineralTest,
      :water_source => nil,
      :mineral => nil,
      :measurement => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
