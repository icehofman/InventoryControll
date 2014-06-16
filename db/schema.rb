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

ActiveRecord::Schema.define(version: 20140602004903) do

  # noinspection RubyQuotedStringsInspection
  create_table "items", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    # noinspection RubyQuotedStringsInspection
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  # noinspection RubyQuotedStringsInspection
  add_index "items", ["order_id"], name: "index_items_on_order_id"
  # noinspection RubyQuotedStringsInspection,RubyQuotedStringsInspection,RubyQuotedStringsInspection
  add_index "items", ["product_id"], name: "index_items_on_product_id"

  # noinspection RubyQuotedStringsInspection
  create_table "orders", force: true do |t|
    # noinspection RubyQuotedStringsInspection
    t.string   "custumer_name"
    # noinspection RubyQuotedStringsInspection
    t.datetime "created_at"
    # noinspection RubyQuotedStringsInspection
    t.datetime "updated_at"
  end

  # noinspection RubyQuotedStringsInspection
  create_table "products", force: true do |t|
    # noinspection RubyQuotedStringsInspection
    t.string   "name"
    # noinspection RubyQuotedStringsInspection
    t.decimal  "price",      precision: 7, scale: 2
    # noinspection RubyQuotedStringsInspection
    t.datetime "created_at"
    # noinspection RubyQuotedStringsInspection
    t.datetime "updated_at"
  end

  # noinspection RubyQuotedStringsInspection
  create_table "stocks", force: true do |t|
    # noinspection RubyQuotedStringsInspection
    t.integer  "product_id"
    # noinspection RubyQuotedStringsInspection
    t.integer  "quantity"
    # noinspection RubyQuotedStringsInspection
    t.datetime "created_at"
    # noinspection RubyQuotedStringsInspection
    t.datetime "updated_at"
  end

  # noinspection RubyQuotedStringsInspection,RubyQuotedStringsInspection,RubyQuotedStringsInspection
  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id"

end
