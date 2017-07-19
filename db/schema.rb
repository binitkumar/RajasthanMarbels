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

ActiveRecord::Schema.define(version: 20170719193303) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "address",    limit: 65535
    t.string   "phone_no"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "order_id"
    t.integer  "stock_id"
    t.string   "product"
    t.string   "model_no"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "order_type"
    t.string   "customer_name"
    t.text     "customer_address",    limit: 65535
    t.string   "customer_contact_no"
    t.string   "product"
    t.string   "model_no"
    t.string   "order_status"
    t.decimal  "advance_amount",                    precision: 10
    t.string   "midiator_name"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.date     "delivery_date"
    t.integer  "stock_id"
    t.integer  "quantity"
    t.integer  "customer_id"
    t.boolean  "stock_updated",                                    default: false
  end

  create_table "stock_collections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "addition_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_name"
    t.string   "modal_number"
    t.integer  "quantity"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.float    "purchase_price",      limit: 24
    t.float    "sale_price",          limit: 24
    t.integer  "stock_collection_id"
    t.integer  "minimum_stock"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
