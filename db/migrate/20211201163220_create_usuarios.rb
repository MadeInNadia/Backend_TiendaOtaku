class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :contraseña

      t.references :compra, foreign_key: true
      t.references :contacto, foreign_key: true

      t.timestamps
    end
  end
end
