require 'spec_helper'

describe "layers/edit" do
  before(:each) do
    @layer = assign(:layer, stub_model(Layer,
      :content => "MyString"
    ))
  end

  it "renders the edit layer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", layer_path(@layer), "post" do
      assert_select "input#layer_content[name=?]", "layer[content]"
    end
  end
end
