require 'spec_helper'

describe "mineral_tests/index" do
  before(:each) do
    assign(:mineral_tests, [
      stub_model(MineralTest,
        :water_source => nil,
        :mineral => nil,
        :measurement => ""
      ),
      stub_model(MineralTest,
        :water_source => nil,
        :mineral => nil,
        :measurement => ""
      )
    ])
  end

  it "renders a list of mineral_tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
