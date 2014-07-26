require 'spec_helper'

describe "layers/new" do
  before(:each) do
    assign(:layer, stub_model(Layer,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new layer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", layers_path, "post" do
      assert_select "input#layer_content[name=?]", "layer[content]"
    end
  end
end
