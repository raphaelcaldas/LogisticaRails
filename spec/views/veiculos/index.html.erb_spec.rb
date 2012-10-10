require 'spec_helper'

describe "veiculos/index" do
  before(:each) do
    assign(:veiculos, [
      stub_model(Veiculo,
        :placa => "Placa",
        :hodometro => "Hodometro",
        :combustivel => "Combustivel",
        :peso => "Peso"
      ),
      stub_model(Veiculo,
        :placa => "Placa",
        :hodometro => "Hodometro",
        :combustivel => "Combustivel",
        :peso => "Peso"
      )
    ])
  end

  it "renders a list of veiculos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    assert_select "tr>td", :text => "Hodometro".to_s, :count => 2
    assert_select "tr>td", :text => "Combustivel".to_s, :count => 2
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
  end
end
