require 'spec_helper'

describe "treatment_chemicals/edit" do
  before(:each) do
    @treatment_chemical = assign(:treatment_chemical, stub_model(TreatmentChemical,
      :name => "MyString"
    ))
  end

  it "renders the edit treatment_chemical form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treatment_chemical_path(@treatment_chemical), "post" do
      assert_select "input#treatment_chemical_name[name=?]", "treatment_chemical[name]"
    end
  end
end
