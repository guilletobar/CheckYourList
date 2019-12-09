# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_08_185057) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id", precision: 38
    t.string "author_type"
    t.integer "author_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "i_act_adm_com_aut_typ_aut_id"
    t.index ["namespace"], name: "i_act_adm_com_nam"
    t.index ["resource_type", "resource_id"], name: "i_act_adm_com_res_typ_res_id"
  end

  create_table "actividades", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "fecha"
    t.string "tipo_actividad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "client_id", precision: 38
    t.integer "profesionale_id", precision: 38
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_adm_use_res_pas_tok", unique: true
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "rut"
    t.string "coreo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "direccion"
    t.string "correo"
    t.string "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comuna"
  end

  create_table "comuna", primary_key: "comuna_id", force: :cascade do |t|
    t.string "comuna_nombre", limit: 20
    t.integer "comuna_provincia_id", limit: 3, precision: 3
  end

  create_table "examples", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profesionales", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "segundo_nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "profesion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provincia", primary_key: "provincia_id", force: :cascade do |t|
    t.string "provincia_nombre", limit: 23
    t.integer "provincia_region_id", limit: 2, precision: 2
  end

  create_table "region", primary_key: "region_id", force: :cascade do |t|
    t.string "region_nombre", limit: 50
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "i_rol_nam_res_typ_res_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "i_rol_res_typ_res_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "roles_id", precision: 38
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_users_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", precision: 38
    t.integer "role_id", precision: 38
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "i_users_roles_user_id_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "comuna", "provincia", column: "comuna_provincia_id", primary_key: "provincia_id", name: "comuna_provincia_id_fkey"
  add_foreign_key "provincia", "region", column: "provincia_region_id", primary_key: "region_id", name: "provincia_region_id_fkey"
end
