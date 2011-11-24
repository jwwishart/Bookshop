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

ActiveRecord::Schema.define(:version => 20111124081848) do

  create_table "accounts", :force => true do |t|
    t.string   "first_name",    :default => "",   :null => false
    t.string   "first_name2",   :default => "",   :null => false
    t.string   "surname",       :default => "",   :null => false
    t.string   "address_line1", :default => "",   :null => false
    t.string   "address_line2", :default => "",   :null => false
    t.string   "city",          :default => "",   :null => false
    t.string   "state",         :default => "",   :null => false
    t.string   "postcode",      :default => "",   :null => false
    t.string   "email",         :default => "",   :null => false
    t.string   "email2",        :default => "",   :null => false
    t.boolean  "is_active",     :default => true, :null => false
    t.boolean  "is_customer",   :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.date     "date"
    t.boolean  "is_sent",     :default => false,      :null => false
    t.string   "send_method", :default => "not-sent", :null => false
    t.datetime "date_sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :id => false, :force => true do |t|
    t.string   "key",                        :null => false
    t.text     "value",      :default => ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["key"], :name => "index_settings_on_key", :unique => true

  create_table "transactions", :force => true do |t|
    t.integer  "from_customer"
    t.integer  "to_customer"
    t.decimal  "amount",        :default => 0.0, :null => false
    t.date     "date",                           :null => false
    t.string   "description",                    :null => false
    t.text     "notes",         :default => "",  :null => false
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
