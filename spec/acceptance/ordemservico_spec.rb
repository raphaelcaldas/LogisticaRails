# coding: utf-8

require 'spec_helper'

feature 'gerenciar ordemservico' do

  scenario 'incluir ordemservico' do #, :javascript => true  do

    rotao = FactoryGirl.create(:rotao, :trajeto => 'Cidade')
    cliente = FactoryGirl.create(:cliente, :nome => 'Raphael')

    visit new_ordemservico_path

    preencher_e_verificar_ordemservico

    

  end


scenario 'alterar ordemservico' do #, :javascript => true  do

    rotao = FactoryGirl.create(:rotao, :trajeto => 'Cidade')
    cliente = FactoryGirl.create(:cliente, :nome => 'Raphael')

    ordemservico = FactoryGirl.create(:ordemservico,:rotao => rotao)
    ordemservico = FactoryGirl.create(:ordemservico,:cliente => cliente)

    visit edit_ordemservico_path(ordemservico)

    preencher_e_verificar_ordemservico


  end

  scenario 'excluir ordemservico' do #, :javascript => true  do
    
    rotao = FactoryGirl.create(:rotao, :trajeto => 'Cidade')
    cliente = FactoryGirl.create(:cliente, :nome => 'Raphael')

    ordemservico = FactoryGirl.create(:ordemservico,:rotao => rotao)
    ordemservico = FactoryGirl.create(:ordemservico,:cliente => cliente)

    visit ordemservicos_path

    click_link 'Excluir'
    
    
  end

  def preencher_e_verificar_ordemservico

    select 'Cidade', :on => 'Trajeto'
    select 'Raphael', :on => 'Nome'

    click_button 'Salvar'

    page.should have_content 'Trajeto: Cidade'	
    page.should have_content 'Nome: Raphael'

    
  end

      

end
