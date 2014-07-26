require 'spec_helper'

describe "light_options/new" do
  before(:each) do
    assign(:light_option, stub_model(LightOption,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new light_option form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", light_options_path, "post" do
      assert_select "input#light_option_content[name=?]", "light_option[content]"
    end
  end
end
