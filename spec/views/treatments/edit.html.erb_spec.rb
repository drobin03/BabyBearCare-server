require 'spec_helper'

describe "treatments/edit" do
  before(:each) do
    @treatment = assign(:treatment, stub_model(Treatment,
      :water_source => nil,
      :treatment_chemical => nil
    ))
  end

  it "renders the edit treatment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treatment_path(@treatment), "post" do
      assert_select "input#treatment_water_source[name=?]", "treatment[water_source]"
      assert_select "input#treatment_treatment_chemical[name=?]", "treatment[treatment_chemical]"
    end
  end
end
