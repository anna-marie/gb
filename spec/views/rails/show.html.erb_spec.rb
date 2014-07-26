require 'spec_helper'

describe "rails/show" do
  before(:each) do
    @rail = assign(:rail, stub_model(Rail,
      :destroy => "Destroy",
      :scaffold => "Scaffold",
      :LightOptions => "Light Options"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Destroy/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Light Options/)
  end
end
