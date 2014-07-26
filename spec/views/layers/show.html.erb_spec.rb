require 'spec_helper'

describe "layers/show" do
  before(:each) do
    @layer = assign(:layer, stub_model(Layer,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
