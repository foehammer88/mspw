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

ActiveRecord::Schema.define(:version => 20130224161713) do

  create_table "analytics", :force => true do |t|
    t.string   "college"
    t.integer  "amount_student_used"
    t.integer  "amount_money"
    t.integer  "total_on_campus"
    t.date     "year"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "appointments", :force => true do |t|
    t.string   "username"
    t.datetime "date"
    t.boolean  "verified"
    t.boolean  "completed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "user"
  end

  create_table "forms", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.decimal  "amount"
    t.string   "requirements"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "username"
    t.integer  "points"
    t.integer  "level"
    t.string   "college"
    t.integer  "number_applications"
    t.date     "date"
    t.decimal  "money"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "college"
    t.string   "address"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
