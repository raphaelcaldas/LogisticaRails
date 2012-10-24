require 'spec_helper'

describe "motoristaos/edit" do
  before(:each) do
    @motoristao = assign(:motoristao, stub_model(Motoristao,
      :nome => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit motoristao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => motoristaos_path(@motoristao), :method => "post" do
      assert_select "input#motoristao_nome", :name => "motoristao[nome]"
      assert_select "input#motoristao_cpf", :name => "motoristao[cpf]"
      assert_select "input#motoristao_endereco", :name => "motoristao[endereco]"
      assert_select "input#motoristao_telefone", :name => "motoristao[telefone]"
    end
  end
end
