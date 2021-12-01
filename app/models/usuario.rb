class Usuario < ApplicationRecord
    belongs_to :perfil
    has_many :contacto
    has_many :compra
end
