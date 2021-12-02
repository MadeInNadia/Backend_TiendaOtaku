class CreatePerfils < ActiveRecord::Migration[6.1]
  def up
    create_table :perfils do |t|
      t.string :favoritos
      t.string :puntos
      t.string :comentarios
      t.string :intereses

      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
  def down
    drop_table :perfils
  end
end
