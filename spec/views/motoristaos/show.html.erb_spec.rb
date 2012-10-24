require 'spec_helper'

describe "motoristaos/show" do
  before(:each) do
    @motoristao = assign(:motoristao, stub_model(Motoristao,
      :nome => "Nome",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
  end
end
