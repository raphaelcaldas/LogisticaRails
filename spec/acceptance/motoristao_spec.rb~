# coding: utf-8

require 'spec_helper'

feature 'gerenciar motoristao' do

  scenario 'incluir motoristao' do # , :javascript => true  do

    visit new_motoristao_path

    preencher_e_verificar_motoristao

    #page.should have_content 'Pessoa cadastrado com sucesso'

  end
  scenario 'alterar motoristao' do #, :javascript => true  do

    motoristao = FactoryGirl.create(:motoristao)

    visit edit_motoristao_path(motoristao)

    preencher_e_verificar_motoristao



  end

  scenario 'excluir motoristao' do #, :javascript => true  do

       motoristao = FactoryGirl.create(:motoristao)

        visit motoristaos_path
        click_link 'Excluir'

    

  end



  def preencher_e_verificar_motoristao

      fill_in 'Nome', :with   => "Raphael"

      fill_in 'Cpf', :with   => "123456789"

      fill_in 'Endereço', :with   => "Rua A"

      fill_in 'Telefone', :with   => "987654321"    
 
      click_button 'Salvar'

      page.should have_content 'Nome: Raphael'
      page.should have_content 'Cpf: 123456789'
      page.should have_content 'Endereço: Rua A'
      page.should have_content 'Telefone: 987654321'

  end
end
	
