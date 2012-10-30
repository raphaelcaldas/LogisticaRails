require 'spec_helper'

describe "ordemservicos/show" do
  before(:each) do
    @ordemservico = assign(:ordemservico, stub_model(Ordemservico,
      :rotao => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
