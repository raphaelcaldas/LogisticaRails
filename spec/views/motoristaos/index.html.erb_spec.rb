require 'spec_helper'

describe "motoristaos/index" do
  before(:each) do
    assign(:motoristaos, [
      stub_model(Motoristao,
        :nome => "Nome",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Motoristao,
        :nome => "Nome",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of motoristaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
