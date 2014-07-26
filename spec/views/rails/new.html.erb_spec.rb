require 'spec_helper'

describe "rails/new" do
  before(:each) do
    assign(:rail, stub_model(Rail,
      :destroy => "MyString",
      :scaffold => "MyString",
      :LightOptions => "MyString"
    ).as_new_record)
  end

  it "renders new rail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rails_path, "post" do
      assert_select "input#rail_destroy[name=?]", "rail[destroy]"
      assert_select "input#rail_scaffold[name=?]", "rail[scaffold]"
      assert_select "input#rail_LightOptions[name=?]", "rail[LightOptions]"
    end
  end
end
