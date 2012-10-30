require 'spec_helper'

describe "rotaos/index" do
  before(:each) do
    assign(:rotaos, [
      stub_model(Rotao,
        :trajeto => "Trajeto",
        :motoristao => nil,
        :veiculo => nil
      ),
      stub_model(Rotao,
        :trajeto => "Trajeto",
        :motoristao => nil,
        :veiculo => nil
      )
    ])
  end

  it "renders a list of rotaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trajeto".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
