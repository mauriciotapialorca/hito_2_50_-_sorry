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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Medicamentos", id: false, force: :cascade do |t|
    t.integer "Codigo_Medicamento"
    t.string "Descripcion", limit: 30, array: true
    t.integer "Stock_Inicial"
    t.integer "Stock_Final"
    t.integer "Precio_Bruto"
    t.integer "Precio_Neto"
  end

  create_table "Proveedores", id: false, force: :cascade do |t|
    t.integer "Codigo_Proveedor"
    t.string "Descripcion"
    t.integer "Codigo_Medicamento"
  end

  create_table "ventas", id: false, force: :cascade do |t|
    t.integer "Numero_Venta"
    t.string "Descripcion"
    t.integer "Precio_Unitario"
    t.integer "Cantidad"
    t.integer "Venta_Total"
    t.string "Codigo_Medicamento"
  end

end
