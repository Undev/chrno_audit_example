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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121030105127) do

  create_table "audit_log", :force => true do |t|
    t.string   "auditable_type", :null => false
    t.integer  "auditable_id",   :null => false
    t.string   "initiator_type"
    t.integer  "initiator_id"
    t.string   "action",         :null => false
    t.text     "diff"
    t.text     "context"
    t.datetime "created_at",     :null => false
  end

  add_index "audit_log", ["action"], :name => "index_audit_log_on_action"
  add_index "audit_log", ["auditable_type", "auditable_id"], :name => "index_audit_log_on_auditable_type_and_auditable_id"
  add_index "audit_log", ["created_at"], :name => "index_audit_log_on_created_at"
  add_index "audit_log", ["initiator_type", "initiator_id"], :name => "index_audit_log_on_initiator_type_and_initiator_id"

  create_table "nested_pages", :force => true do |t|
    t.string   "author"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "author"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
