class Banco < ActiveRecord::Base

    self.primary_key = :idBancos

    has_many :horarios, :class_name => 'Horario'
    has_many :solicitudes, :class_name => 'Solicitude'
end
