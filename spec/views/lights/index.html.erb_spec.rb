require 'spec_helper'

describe "lights/index" do
  before(:each) do
    assign(:lights, [
      stub_model(Light,
        :content => "Content"
      ),
      stub_model(Light,
        :content => "Content"
      )
    ])
  end

  it "renders a list of lights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
