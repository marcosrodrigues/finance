class Favored < ActiveRecord::Base
  
  KIND = %w(Fisica Juridica)
  
  validates_presence_of :name, :message => 'Informe o nome do favorecido'
  
  validates_inclusion_of :kind, :in => KIND

end
