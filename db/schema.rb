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

ActiveRecord::Schema.define(version: 18) do

  create_table "accounts", force: :cascade do |t|
    t.string   "type",        default: "free"
    t.string   "name"
    t.string   "account_key"
    t.integer  "owner_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "h_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "host_groups", force: :cascade do |t|
    t.integer  "host_id"
    t.integer  "hgroup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "host_groups", ["hgroup_id"], name: "index_host_groups_on_hgroup_id"
  add_index "host_groups", ["host_id"], name: "index_host_groups_on_host_id"

  create_table "host_ratings", force: :cascade do |t|
    t.integer  "user_rate"
    t.integer  "bogomips"
    t.integer  "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "host_ratings", ["host_id"], name: "index_host_ratings_on_host_id"

  create_table "host_tags", force: :cascade do |t|
    t.integer  "host_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "host_tags", ["host_id"], name: "index_host_tags_on_host_id"
  add_index "host_tags", ["tag_id"], name: "index_host_tags_on_tag_id"

  create_table "hosts", force: :cascade do |t|
    t.string   "fqdn"
    t.string   "signature"
    t.string   "internal_ip"
    t.datetime "last_update"
    t.integer  "account_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "job_reports", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "status_code"
    t.text     "output"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "job_reports", ["job_id"], name: "index_job_reports_on_job_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "schedule"
    t.integer  "secs_timeout"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "outbound_mails", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "outbound_mails", ["user_id"], name: "index_outbound_mails_on_user_id"

  create_table "pending_mails", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pending_mails", ["user_id"], name: "index_pending_mails_on_user_id"

  create_table "scripts", force: :cascade do |t|
    t.string   "syn_lang"
    t.text     "content"
    t.string   "filename"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tag"
    t.integer  "account_id"
    t.boolean  "user_created", default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "tags", ["account_id"], name: "index_tags_on_account_id"

  create_table "user_accounts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "account_id"
    t.string   "role",       default: "admin"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "user_accounts", ["account_id"], name: "index_user_accounts_on_account_id"
  add_index "user_accounts", ["user_id"], name: "index_user_accounts_on_user_id"

  create_table "user_activations", force: :cascade do |t|
    t.string   "auth_key"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_activations", ["user_id"], name: "index_user_activations_on_user_id"

  create_table "user_api_stats", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date"
    t.integer  "collect_calls"
    t.integer  "web_calls"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "user_api_stats", ["user_id"], name: "index_user_api_stats_on_user_id"

  create_table "user_invites", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "invite_key"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_invites", ["user_id"], name: "index_user_invites_on_user_id"

  create_table "user_pwd_resets", force: :cascade do |t|
    t.string   "pwd_reset_key"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "user_pwd_resets", ["user_id"], name: "index_user_pwd_resets_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "user_key"
    t.boolean  "active"
    t.string   "fullname"
    t.integer  "default_account_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
