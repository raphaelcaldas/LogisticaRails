class Cliente < ActiveRecord::Base
  attr_accessible :cnpj, :dados, :nome, :tipo
end
