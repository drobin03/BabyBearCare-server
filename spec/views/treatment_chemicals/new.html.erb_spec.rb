require 'spec_helper'

describe "treatment_chemicals/new" do
  before(:each) do
    assign(:treatment_chemical, stub_model(TreatmentChemical,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new treatment_chemical form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treatment_chemicals_path, "post" do
      assert_select "input#treatment_chemical_name[name=?]", "treatment_chemical[name]"
    end
  end
end
