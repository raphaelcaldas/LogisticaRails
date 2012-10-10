require 'spec_helper'

describe "veiculos/show" do
  before(:each) do
    @veiculo = assign(:veiculo, stub_model(Veiculo,
      :placa => "Placa",
      :hodometro => "Hodometro",
      :combustivel => "Combustivel",
      :peso => "Peso"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Placa/)
    rendered.should match(/Hodometro/)
    rendered.should match(/Combustivel/)
    rendered.should match(/Peso/)
  end
end
