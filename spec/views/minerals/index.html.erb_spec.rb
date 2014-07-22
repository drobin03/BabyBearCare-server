require 'spec_helper'

describe "minerals/index" do
  before(:each) do
    assign(:minerals, [
      stub_model(Mineral,
        :name => "Name",
        :max_dosage => ""
      ),
      stub_model(Mineral,
        :name => "Name",
        :max_dosage => ""
      )
    ])
  end

  it "renders a list of minerals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
