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

ActiveRecord::Schema.define(:version => 20121102231713) do

  create_table "channels", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "channels", ["id"], :name => "index_channels_on_id"
  add_index "channels", ["name"], :name => "index_channels_on_name"

  create_table "channels_nicks", :force => true do |t|
    t.integer "channel_id", :null => false
    t.integer "nick_id",    :null => false
  end

  add_index "channels_nicks", ["channel_id"], :name => "index_channels_nicks_on_channel_id"
  add_index "channels_nicks", ["nick_id"], :name => "index_channels_nicks_on_nick_id"

  create_table "messages", :force => true do |t|
    t.integer  "channel_id", :null => false
    t.text     "message",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "messages", ["channel_id"], :name => "index_messages_on_channel_id"
  add_index "messages", ["id"], :name => "index_messages_on_id"
  add_index "messages", ["message"], :name => "index_messages_on_message"

  create_table "nicks", :force => true do |t|
    t.string   "nick",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "nicks", ["id"], :name => "index_nicks_on_id"
  add_index "nicks", ["nick"], :name => "index_nicks_on_nick"

end
