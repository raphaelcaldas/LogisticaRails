require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :tipo => "Tipo",
      :cnpj => "Cnpj",
      :dados => "Dados"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Tipo/)
    rendered.should match(/Cnpj/)
    rendered.should match(/Dados/)
  end
end
