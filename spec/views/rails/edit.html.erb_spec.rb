require 'spec_helper'

describe "rails/edit" do
  before(:each) do
    @rail = assign(:rail, stub_model(Rail,
      :destroy => "MyString",
      :scaffold => "MyString",
      :LightOptions => "MyString"
    ))
  end

  it "renders the edit rail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rail_path(@rail), "post" do
      assert_select "input#rail_destroy[name=?]", "rail[destroy]"
      assert_select "input#rail_scaffold[name=?]", "rail[scaffold]"
      assert_select "input#rail_LightOptions[name=?]", "rail[LightOptions]"
    end
  end
end
