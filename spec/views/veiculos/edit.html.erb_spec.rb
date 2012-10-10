require 'spec_helper'

describe "veiculos/edit" do
  before(:each) do
    @veiculo = assign(:veiculo, stub_model(Veiculo,
      :placa => "MyString",
      :hodometro => "MyString",
      :combustivel => "MyString",
      :peso => "MyString"
    ))
  end

  it "renders the edit veiculo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => veiculos_path(@veiculo), :method => "post" do
      assert_select "input#veiculo_placa", :name => "veiculo[placa]"
      assert_select "input#veiculo_hodometro", :name => "veiculo[hodometro]"
      assert_select "input#veiculo_combustivel", :name => "veiculo[combustivel]"
      assert_select "input#veiculo_peso", :name => "veiculo[peso]"
    end
  end
end
