require 'spec_helper'

describe "lights/new" do
  before(:each) do
    assign(:light, stub_model(Light,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new light form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lights_path, "post" do
      assert_select "input#light_content[name=?]", "light[content]"
    end
  end
end
