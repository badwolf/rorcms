# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100617033909) do

  create_table "articles", :force => true do |t|
    t.integer  "channel_id"
    t.string   "title"
    t.string   "sub_title"
    t.text     "short_content"
    t.text     "content"
    t.string   "source"
    t.string   "source_link"
    t.boolean  "if_link"
    t.integer  "author_id"
    t.integer  "state_id"
    t.integer  "hits"
    t.integer  "priority",       :default => 0
    t.boolean  "sticky"
    t.integer  "comments_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", :force => true do |t|
    t.string   "title"
    t.text     "intro"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "contents_count", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.text     "content"
    t.integer  "user_id"
    t.string   "visitor_name"
    t.string   "visted_ip"
    t.integer  "vote_for"
    t.integer  "vote_against"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_ranks", :force => true do |t|
    t.string   "name"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role",              :default => 0
  end

end
