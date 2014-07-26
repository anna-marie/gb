require 'spec_helper'

describe "light_options/edit" do
  before(:each) do
    @light_option = assign(:light_option, stub_model(LightOption,
      :content => "MyString"
    ))
  end

  it "renders the edit light_option form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", light_option_path(@light_option), "post" do
      assert_select "input#light_option_content[name=?]", "light_option[content]"
    end
  end
end
