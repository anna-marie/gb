require 'spec_helper'

describe "rails/index" do
  before(:each) do
    assign(:rails, [
      stub_model(Rail,
        :destroy => "Destroy",
        :scaffold => "Scaffold",
        :LightOptions => "Light Options"
      ),
      stub_model(Rail,
        :destroy => "Destroy",
        :scaffold => "Scaffold",
        :LightOptions => "Light Options"
      )
    ])
  end

  it "renders a list of rails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Light Options".to_s, :count => 2
  end
end
