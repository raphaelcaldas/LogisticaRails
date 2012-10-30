class Ordemservico < ActiveRecord::Base
  belongs_to :rotao
  belongs_to :cliente
  attr_accessible :rotao_id, :trajeto, :cliente_id, :nome
end
