# coding: utf-8

require 'spec_helper'

feature 'gerenciar rotao' do

  scenario 'incluir rotao' do #, :javascript => true  do

    motoristao = FactoryGirl.create(:motoristao, :nome => 'Raphael')
    veiculo = FactoryGirl.create(:veiculo, :placa => 'KMS-1260')

    visit new_rotao_path

    preencher_e_verificar_rotao

    

  end

scenario 'alterar rotao' do #, :javascript => true  do

    motoristao = FactoryGirl.create(:motoristao, :nome => 'Raphael')
    veiculo = FactoryGirl.create(:veiculo, :placa => 'KMS-1260')

    rotao = FactoryGirl.create(:rotao,:motoristao => motoristao)
    rotao = FactoryGirl.create(:rotao,:veiculo => veiculo)

    visit edit_rotao_path(rotao)

    preencher_e_verificar_rotao


  end

  scenario 'excluir rotao' do #, :javascript => true  do
    
    motoristao = FactoryGirl.create(:motoristao, :nome => 'Raphael')
    veiculo = FactoryGirl.create(:veiculo, :placa => 'KMS-1260')
    
    rotao = FactoryGirl.create(:rotao,:motoristao => motoristao)
    rotao = FactoryGirl.create(:rotao,:veiculo => veiculo)

    visit rotaos_path

    click_link 'Excluir'
    
    
  end


  def preencher_e_verificar_rotao

    select 'Raphael', :on => 'Nome'
    select 'KMS-1260', :on => 'Placa'
    fill_in 'Trajeto',  :with => "Cidade" 

    click_button 'Salvar'

    page.should have_content 'Nome: Raphael'
    page.should have_content 'Placa: KMS-1260'
    page.should have_content 'Trajeto: Cidade'	

    
  end

      

end
