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

ActiveRecord::Schema.define(:version => 20131004170015) do

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

  create_table "web_developer_endorsements", :force => true do |t|
    t.text    "description",           :limit => 255
    t.string  "endorser_name"
    t.string  "endorser_relationship"
    t.integer "web_developer_id"
    t.string  "endorser_url"
    t.integer "importance"
  end

  create_table "web_developer_images", :force => true do |t|
    t.string  "description"
    t.string  "image"
    t.boolean "main_image"
    t.integer "web_developer_id"
  end

  create_table "web_developer_jobs", :force => true do |t|
    t.text    "description",       :limit => 255
    t.string  "company"
    t.string  "duration"
    t.string  "skills_used"
    t.string  "location"
    t.integer "web_developer_id"
    t.string  "short_description"
    t.integer "importance"
  end

  create_table "web_developer_links", :force => true do |t|
    t.string  "description"
    t.string  "url"
    t.integer "web_developer_id"
    t.string  "icon_file_name"
    t.string  "display_link"
  end

  create_table "web_developer_project_images", :force => true do |t|
    t.string  "description"
    t.boolean "main_image"
    t.integer "web_developer_project_id"
    t.string  "image"
  end

  create_table "web_developer_projects", :force => true do |t|
    t.text    "description",       :limit => 255
    t.string  "github_url"
    t.string  "deployed_url"
    t.integer "web_developer_id"
    t.string  "short_description"
    t.integer "importance"
  end

  create_table "web_developer_trainings", :force => true do |t|
    t.text    "description",       :limit => 255
    t.string  "duration"
    t.integer "web_developer_id"
    t.string  "short_description"
    t.integer "importance"
  end

  create_table "web_developer_videos", :force => true do |t|
    t.text    "description"
    t.string  "title"
    t.string  "url"
    t.integer "web_developer_id"
    t.integer "importance"
  end

  create_table "web_developers", :force => true do |t|
    t.text "my_story"
    t.text "skills"
  end

end
