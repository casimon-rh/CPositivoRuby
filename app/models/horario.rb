class Horario < ActiveRecord::Base

    self.primary_key = :idHorarios

    belongs_to :banco, :class_name => 'Banco', :foreign_key => :Bancos_idBancos
end
