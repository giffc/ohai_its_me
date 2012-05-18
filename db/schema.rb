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

ActiveRecord::Schema.define(:version => 20120502021651) do

  create_table "linked_accounts", :force => true do |t|
    t.integer   "user_id"
    t.string   "type"
    t.string   "app_username"
    t.string   "app_user_id"
    t.string   "token"
    t.string   "secret"
    t.string   "refresh_token"
    t.string   "image_url"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", :force => true do |t|
    t.integer  "post_id"
    t.string   "embed_type"
    t.string   "version"
    t.string   "title"
    t.string   "author_name"
    t.string   "author_url"
    t.string   "provider_name"
    t.string   "provider_url"
    t.string   "cache_age"
    t.string   "thumbnail_url"
    t.integer  "thumbnail_width"
    t.integer  "thumbnail_height"
    t.string   "description"
    t.string   "url"
    t.integer  "width"
    t.integer  "height"
    t.text     "html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "linked_account_id"
    t.string   "permalink"
    t.string   "activity_type"
    t.string   "title"
    t.text     "content"
    t.string   "author_name"
    t.string   "author_url"
    t.string   "author_image"
    t.string   "source_id"
    t.datetime "source_created_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

end
