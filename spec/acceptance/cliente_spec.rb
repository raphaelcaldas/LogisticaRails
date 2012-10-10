# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente' do # , :javascript => true  do

    visit new_cliente_path

    preencher_e_verificar_cliente

    #page.should have_content 'Pessoa cadastrado com sucesso'

  end

  scenario 'alterar cliente' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

  scenario 'excluir cliente' do #, :javascript => true  do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

    

  end

  def preencher_e_verificar_cliente

      fill_in 'Nome',  :with => "Raphael"

      fill_in 'Tipo Cliente', :with   => "Pessoa"

      fill_in 'Cnpj/Cpf', :with   => "12345"

      fill_in 'Dados Cliente', :with   => "endereco"
    
 
      click_button 'Salvar'

      page.should have_content 'Nome: Raphael'
      page.should have_content 'Tipo Cliente: Pessoa'
      page.should have_content 'Cnpj/Cpf: 12345'
      page.should have_content 'Dados Cliente: endereco'

  end
end
	
