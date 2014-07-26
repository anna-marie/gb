require 'spec_helper'

describe "light_options/index" do
  before(:each) do
    assign(:light_options, [
      stub_model(LightOption,
        :content => "Content"
      ),
      stub_model(LightOption,
        :content => "Content"
      )
    ])
  end

  it "renders a list of light_options" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
