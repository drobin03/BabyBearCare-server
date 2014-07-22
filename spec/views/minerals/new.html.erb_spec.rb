require 'spec_helper'

describe "minerals/new" do
  before(:each) do
    assign(:mineral, stub_model(Mineral,
      :name => "MyString",
      :max_dosage => ""
    ).as_new_record)
  end

  it "renders new mineral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", minerals_path, "post" do
      assert_select "input#mineral_name[name=?]", "mineral[name]"
      assert_select "input#mineral_max_dosage[name=?]", "mineral[max_dosage]"
    end
  end
end
