require 'spec_helper'

describe "light_options/show" do
  before(:each) do
    @light_option = assign(:light_option, stub_model(LightOption,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
