require 'spec_helper'

describe "minerals/edit" do
  before(:each) do
    @mineral = assign(:mineral, stub_model(Mineral,
      :name => "MyString",
      :max_dosage => ""
    ))
  end

  it "renders the edit mineral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mineral_path(@mineral), "post" do
      assert_select "input#mineral_name[name=?]", "mineral[name]"
      assert_select "input#mineral_max_dosage[name=?]", "mineral[max_dosage]"
    end
  end
end
