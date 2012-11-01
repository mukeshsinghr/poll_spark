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

ActiveRecord::Schema.define(:version => 20121101013449) do

  create_table "friends", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "petition_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "petition_id"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "newpetitions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.integer  "user_id"
    t.string   "stripe_customer_token"
    t.string   "stripe_charge_token"
    t.integer  "item_id"
    t.integer  "price"
  end

  create_table "petitions", :force => true do |t|
    t.string   "name"
    t.integer  "rating"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
    t.string   "pics"
    t.string   "pass"
    t.integer  "user_id"
    t.string   "links"
    t.string   "launched"
    t.string   "url"
    t.string   "demands"
  end

  create_table "signatures", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "country"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "total"
    t.string   "remember_token"
    t.string   "signaturepic"
    t.string   "user_id"
    t.string   "petition_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "string"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "vote"
    t.string   "avatars"
    t.string   "country"
    t.boolean  "admin",           :default => false
    t.string   "petitioner"
    t.integer  "petition_id"
    t.string   "confirmed"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
