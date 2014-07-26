require 'spec_helper'

describe "layers/index" do
  before(:each) do
    assign(:layers, [
      stub_model(Layer,
        :content => "Content"
      ),
      stub_model(Layer,
        :content => "Content"
      )
    ])
  end

  it "renders a list of layers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
