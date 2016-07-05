# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150504145032) do

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.string   "element"
    t.string   "weakness"
    t.string   "info"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pdfs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "portfolio_id"
  end

  add_index "pdfs", ["portfolio_id"], name: "index_pdfs_on_portfolio_id"

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "info"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "portfolio_id"
  end

  add_index "photos", ["portfolio_id"], name: "index_photos_on_portfolio_id"

  create_table "portfilo_images", force: :cascade do |t|
    t.string   "name"
    t.integer  "portfilo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "info"
    t.string   "links"
    t.string   "content"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "photo_id"
    t.integer  "pdf_id"
    t.integer  "user_id"
    t.string   "name"
  end

  add_index "portfolios", ["pdf_id"], name: "index_portfolios_on_pdf_id"
  add_index "portfolios", ["photo_id"], name: "index_portfolios_on_photo_id"
  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",                default: false
    t.string   "activation_digest"
    t.boolean  "activated",            default: false
    t.datetime "activated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.integer  "portfolio_id"
    t.string   "bgimage_file_name"
    t.string   "bgimage_content_type"
    t.integer  "bgimage_file_size"
    t.datetime "bgimage_updated_at"
    t.string   "info"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["portfolio_id"], name: "index_users_on_portfolio_id"

end
