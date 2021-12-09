class CreateUsuarios < ActiveRecord::Migration[6.1]
  def up
    create_table :usuarios do |t|
      t.string :nombre
      t.string :contrasenia

      

      t.timestamps
    end
  end
  def down
    drop_table :usuarios
  end
end
