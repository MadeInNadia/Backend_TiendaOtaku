class CreateProductos < ActiveRecord::Migration[6.1]
  def up
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :precio

      t.timestamps
    end
    end
    def down
      drop_table :productos
  end
end
