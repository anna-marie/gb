require 'spec_helper'

describe "lights/show" do
  before(:each) do
    @light = assign(:light, stub_model(Light,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
