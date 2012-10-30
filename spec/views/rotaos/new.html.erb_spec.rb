require 'spec_helper'

describe "rotaos/new" do
  before(:each) do
    assign(:rotao, stub_model(Rotao,
      :trajeto => "MyString",
      :motoristao => nil,
      :veiculo => nil
    ).as_new_record)
  end

  it "renders new rotao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rotaos_path, :method => "post" do
      assert_select "input#rotao_trajeto", :name => "rotao[trajeto]"
      assert_select "input#rotao_motoristao", :name => "rotao[motoristao]"
      assert_select "input#rotao_veiculo", :name => "rotao[veiculo]"
    end
  end
end
