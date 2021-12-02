# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_173654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compras", force: :cascade do |t|
    t.string "total"
    t.string "fecha"
    t.bigint "producto_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_compras_on_producto_id"
  end

  create_table "contactos", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "pregunta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.string "favoritos"
    t.string "puntos"
    t.string "comentarios"
    t.string "intereses"
    t.bigint "usuario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_perfils_on_usuario_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "precio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "contraseña"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "compras", "productos"
  add_foreign_key "perfils", "usuarios"
end
