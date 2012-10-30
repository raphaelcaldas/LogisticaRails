require 'spec_helper'

describe "ordemservicos/new" do
  before(:each) do
    assign(:ordemservico, stub_model(Ordemservico,
      :rotao => nil,
      :cliente => nil
    ).as_new_record)
  end

  it "renders new ordemservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ordemservicos_path, :method => "post" do
      assert_select "input#ordemservico_rotao", :name => "ordemservico[rotao]"
      assert_select "input#ordemservico_cliente", :name => "ordemservico[cliente]"
    end
  end
end
