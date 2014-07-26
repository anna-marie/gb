require 'spec_helper'

describe "lights/edit" do
  before(:each) do
    @light = assign(:light, stub_model(Light,
      :content => "MyString"
    ))
  end

  it "renders the edit light form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", light_path(@light), "post" do
      assert_select "input#light_content[name=?]", "light[content]"
    end
  end
end
