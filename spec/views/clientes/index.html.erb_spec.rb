require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :tipo => "Tipo",
        :cnpj => "Cnpj",
        :dados => "Dados"
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :tipo => "Tipo",
        :cnpj => "Cnpj",
        :dados => "Dados"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Dados".to_s, :count => 2
  end
end
