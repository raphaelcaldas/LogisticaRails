require 'spec_helper'

describe "ordemservicos/index" do
  before(:each) do
    assign(:ordemservicos, [
      stub_model(Ordemservico,
        :rotao => nil,
        :cliente => nil
      ),
      stub_model(Ordemservico,
        :rotao => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of ordemservicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
