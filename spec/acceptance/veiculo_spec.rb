# coding: utf-8

require 'spec_helper'

feature 'gerenciar veiculo' do

  scenario 'incluir veiculo' do # , :javascript => true  do

    visit new_veiculo_path

    preencher_e_verificar_veiculo

    #page.should have_content 'Pessoa cadastrado com sucesso'

  end

   def preencher_e_verificar_veiculo

      fill_in 'Placa',  :with => "KMS-1260"

      fill_in 'Hodometro', :with   => "34.653"

      fill_in 'Combustivel', :with   => "DIESEL"

      fill_in 'Peso', :with   => "10.000 kg"
    
 
      click_button 'Create Veiculo'

      page.should have_content 'Placa: KMS-1260'

      page.should have_content 'Hodometro: 34.653'
      page.should have_content 'Combustivel: DIESEL'
      page.should have_content 'Peso: 10.000 kg'

   end
end

