class CreateContactos < ActiveRecord::Migration[6.1]
  def up
    create_table :contactos do |t|
      t.string :nombre
      t.string :email
      t.string :pregunta

      t.timestamps
    end
  end
  def down
    drop_table :contactos
  end
  
end
