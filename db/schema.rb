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

ActiveRecord::Schema.define(:version => 20131206111855) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "event_type"
    t.date     "event_date"
    t.time     "event_time"
    t.string   "event_location"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "event_image_file_name"
    t.string   "event_image_content_type"
    t.integer  "event_image_file_size"
    t.datetime "event_image_updated_at"
    t.string   "event_image_thin_file_name"
    t.string   "event_image_thin_content_type"
    t.integer  "event_image_thin_file_size"
    t.datetime "event_image_thin_updated_at"
    t.time     "event_start_time"
    t.time     "event_end_time"
    t.integer  "schedule_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "author"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.date     "publish_date"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "site_id"
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "schedules", ["site_id"], :name => "index_schedules_on_site_id"

  create_table "sites", :force => true do |t|
    t.string   "title"
    t.string   "default_showing_location"
    t.string   "default_showing_description"
    t.string   "default_social_location"
    t.string   "default_social_description"
    t.string   "default_game_night_location"
    t.string   "default_game_night_description"
    t.string   "carousel_one_href"
    t.string   "carousel_two_href"
    t.string   "carousel_three_href"
    t.boolean  "default_site",                              :default => false
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.string   "default_showing_image_file_name"
    t.string   "default_showing_image_content_type"
    t.integer  "default_showing_image_file_size"
    t.datetime "default_showing_image_updated_at"
    t.string   "default_social_image_file_name"
    t.string   "default_social_image_content_type"
    t.integer  "default_social_image_file_size"
    t.datetime "default_social_image_updated_at"
    t.string   "default_game_night_image_file_name"
    t.string   "default_game_night_image_content_type"
    t.integer  "default_game_night_image_file_size"
    t.datetime "default_game_night_image_updated_at"
    t.string   "default_carousel_one_image_file_name"
    t.string   "default_carousel_one_image_content_type"
    t.integer  "default_carousel_one_image_file_size"
    t.datetime "default_carousel_one_image_updated_at"
    t.string   "default_carousel_two_image_file_name"
    t.string   "default_carousel_two_image_content_type"
    t.integer  "default_carousel_two_image_file_size"
    t.datetime "default_carousel_two_image_updated_at"
    t.string   "default_carousel_three_image_file_name"
    t.string   "default_carousel_three_image_content_type"
    t.integer  "default_carousel_three_image_file_size"
    t.datetime "default_carousel_three_image_updated_at"
    t.string   "carousel_one_title"
    t.string   "carousel_two_title"
    t.string   "carousel_three_title"
    t.boolean  "show_carousel",                             :default => true
    t.time     "default_showing_time"
    t.time     "default_social_time"
    t.time     "default_game_night_time"
    t.time     "default_showing_end_time"
    t.time     "default_social_end_time"
    t.time     "default_game_night_end_time"
    t.string   "current_schedule"
  end

end
