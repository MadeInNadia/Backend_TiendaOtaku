class CreateCompras < ActiveRecord::Migration[6.1]
  def up
    create_table :compras do |t|
      t.string :total
      t.string :fecha

      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
  def down
    drop_table :compras
  end
end
