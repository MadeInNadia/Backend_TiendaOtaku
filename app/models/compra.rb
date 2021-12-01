class Compra < ApplicationRecord
    belongs_to :usuario
    has_many :producto
end
