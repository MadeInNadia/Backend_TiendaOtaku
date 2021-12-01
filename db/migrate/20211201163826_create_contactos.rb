class CreateContactos < ActiveRecord::Migration[6.1]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :email
      t.string :pregunta

      t.timestamps
    end
  end
end