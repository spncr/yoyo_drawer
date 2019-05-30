# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_17_221209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name", null: false
    t.text "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", id: :bigint, default: nil, force: :cascade do |t|
    t.text "key", null: false
    t.text "filename", null: false
    t.text "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.text "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "collectors", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "crypted_password", null: false
    t.string "salt", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_collectors_on_email", unique: true
  end

  create_table "comments", id: :bigint, default: nil, force: :cascade do |t|
    t.text "author_name"
    t.text "author_email"
    t.text "content"
    t.bigint "yoyo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["yoyo_id"], name: "index_comments_on_yoyo_id"
  end

  create_table "makers", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name"
    t.bigint "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_models_on_maker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "yoyos", id: :bigint, default: nil, force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.boolean "accepting_offers"
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "model_id"
    t.index ["model_id"], name: "index_yoyos_on_model_id"
  end

  add_foreign_key "comments", "yoyos", name: "comments_yoyo_id_fkey"
  add_foreign_key "models", "makers", name: "models_maker_id_fkey"
end
