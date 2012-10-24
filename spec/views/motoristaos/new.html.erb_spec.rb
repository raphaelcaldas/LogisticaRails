require 'spec_helper'

describe "motoristaos/new" do
  before(:each) do
    assign(:motoristao, stub_model(Motoristao,
      :nome => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new motoristao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => motoristaos_path, :method => "post" do
      assert_select "input#motoristao_nome", :name => "motoristao[nome]"
      assert_select "input#motoristao_cpf", :name => "motoristao[cpf]"
      assert_select "input#motoristao_endereco", :name => "motoristao[endereco]"
      assert_select "input#motoristao_telefone", :name => "motoristao[telefone]"
    end
  end
end
