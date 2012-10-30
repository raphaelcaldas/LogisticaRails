class Rotao < ActiveRecord::Base
  belongs_to :motoristao
  belongs_to :veiculo
  attr_accessible :trajeto, :motoristao_id, :nome, :veiculo_id, :placa
end
