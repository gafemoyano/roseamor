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

ActiveRecord::Schema.define(version: 20161018134050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "order",      default: 99, null: false
  end

  create_table "color_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "order",      default: 99, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "color_category_id"
    t.index ["color_category_id"], name: "index_colors_on_color_category_id", using: :btree
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "mail"
    t.string   "website"
    t.string   "address"
    t.string   "logo_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "country_code",      null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "gallery_image_1_title"
    t.string   "gallery_image_1_description"
    t.string   "gallery_image_2_title"
    t.string   "gallery_image_2_description"
    t.string   "gallery_image_3_title"
    t.string   "gallery_image_3_description"
    t.string   "gallery_image_4_title"
    t.string   "gallery_image_4_description"
    t.string   "gallery_image_5_title"
    t.string   "gallery_image_5_description"
    t.string   "gallery_image_6_title"
    t.string   "gallery_image_6_description"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "gallery_image_1_file_name"
    t.string   "gallery_image_1_content_type"
    t.integer  "gallery_image_1_file_size"
    t.datetime "gallery_image_1_updated_at"
    t.string   "gallery_image_2_file_name"
    t.string   "gallery_image_2_content_type"
    t.integer  "gallery_image_2_file_size"
    t.datetime "gallery_image_2_updated_at"
    t.string   "gallery_image_3_file_name"
    t.string   "gallery_image_3_content_type"
    t.integer  "gallery_image_3_file_size"
    t.datetime "gallery_image_3_updated_at"
    t.string   "gallery_image_4_file_name"
    t.string   "gallery_image_4_content_type"
    t.integer  "gallery_image_4_file_size"
    t.datetime "gallery_image_4_updated_at"
    t.string   "gallery_image_5_file_name"
    t.string   "gallery_image_5_content_type"
    t.integer  "gallery_image_5_file_size"
    t.datetime "gallery_image_5_updated_at"
    t.string   "gallery_image_6_file_name"
    t.string   "gallery_image_6_content_type"
    t.integer  "gallery_image_6_file_size"
    t.datetime "gallery_image_6_updated_at"
    t.string   "slider_image_1_file_name"
    t.string   "slider_image_1_content_type"
    t.integer  "slider_image_1_file_size"
    t.datetime "slider_image_1_updated_at"
    t.string   "slider_image_2_file_name"
    t.string   "slider_image_2_content_type"
    t.integer  "slider_image_2_file_size"
    t.datetime "slider_image_2_updated_at"
    t.string   "slider_image_3_file_name"
    t.string   "slider_image_3_content_type"
    t.integer  "slider_image_3_file_size"
    t.datetime "slider_image_3_updated_at"
    t.string   "slider_image_4_file_name"
    t.string   "slider_image_4_content_type"
    t.integer  "slider_image_4_file_size"
    t.datetime "slider_image_4_updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "diameter"
    t.decimal  "height"
    t.string   "package_file_name"
    t.string   "package_content_type"
    t.integer  "package_file_size"
    t.datetime "package_updated_at"
    t.text     "description"
    t.boolean  "all_colors",           default: true, null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["diameter"], name: "index_products_on_diameter", using: :btree
    t.index ["height"], name: "index_products_on_height", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "colors", "color_categories"
  add_foreign_key "products", "categories"
end
