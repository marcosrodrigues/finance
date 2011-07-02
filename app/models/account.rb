class Account < ActiveRecord::Base

  KIND = %w(CartaoCredito ContaCorrente Dinheiro Poupanca)
  
  validates_presence_of :name
  
  validates_inclusion_of :kind, :in => KIND

end
