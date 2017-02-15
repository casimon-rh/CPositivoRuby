class Solicitude < ActiveRecord::Base

    self.primary_key = :idSolicitudes

    belongs_to :banco, :class_name => 'Banco', :foreign_key => :Bancos_idBancos
end
