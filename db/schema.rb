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

ActiveRecord::Schema.define(version: 20141011092856) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "corporates", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "sector"
    t.string   "address"
    t.text     "activity"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "urlevernote"
    t.string   "urlcompanywebsite"
    t.string   "urlgooglenews"
    t.string   "Bloombergid"
    t.string   "corpimage_file_name"
    t.string   "corpimage_content_type"
    t.integer  "corpimage_file_size"
    t.datetime "corpimage_updated_at"
    t.string   "logoimage_file_name"
    t.string   "logoimage_content_type"
    t.integer  "logoimage_file_size"
    t.datetime "logoimage_updated_at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "downloads", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "itemorder"
    t.string   "routing"
    t.boolean  "ViewerAllowed"
    t.string   "docupload_file_name"
    t.string   "docupload_content_type"
    t.integer  "docupload_file_size"
    t.datetime "docupload_updated_at"
  end

  create_table "infocats", force: true do |t|
    t.string   "title"
    t.string   "brief_description"
    t.integer  "itemorder"
    t.string   "routing"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "openinfos", force: true do |t|
    t.string   "title"
    t.text     "Openinformation"
    t.integer  "user_id"
    t.text     "Moreinformation"
    t.integer  "itemorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumeitems", force: true do |t|
    t.string   "type"
    t.string   "organisation"
    t.string   "location"
    t.string   "title_course"
    t.string   "detail1"
    t.string   "detail2"
    t.string   "detail3"
    t.string   "detail4"
    t.string   "detail5"
    t.string   "detail6"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "detail"
    t.string   "sections"
    t.integer  "user_id"
    t.text     "Moreinformation"
    t.text     "extradetail"
    t.integer  "itemorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "viewers", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
