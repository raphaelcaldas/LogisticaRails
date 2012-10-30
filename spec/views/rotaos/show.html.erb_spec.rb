require 'spec_helper'

describe "rotaos/show" do
  before(:each) do
    @rotao = assign(:rotao, stub_model(Rotao,
      :trajeto => "Trajeto",
      :motoristao => nil,
      :veiculo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trajeto/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
