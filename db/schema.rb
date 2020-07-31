# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_31_080417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artcles", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.string "image"
    t.string "video"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "artcle_id"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_users", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_users_on_group_id"
    t.index ["user_id"], name: "index_group_users_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_name"], name: "index_groups_on_group_name", unique: true
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "artcle_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artcle_id"], name: "index_likes_on_artcle_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "matchings", force: :cascade do |t|
    t.bigint "host_user_id", null: false
    t.bigint "guest_user_id", null: false
    t.string "match_type", null: false
    t.date "scheduled_date", null: false
    t.time "scheduled_time", null: false
    t.string "place"
    t.date "response_deadline", null: false
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_user_id"], name: "index_matchings_on_guest_user_id"
    t.index ["host_user_id"], name: "index_matchings_on_host_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.string "image"
    t.bigint "group_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_messages_on_group_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "image"
    t.string "age", null: false
    t.string "gender", null: false
    t.string "introduction", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
  add_foreign_key "likes", "artcles"
  add_foreign_key "likes", "users"
  add_foreign_key "matchings", "users", column: "guest_user_id"
  add_foreign_key "matchings", "users", column: "host_user_id"
  add_foreign_key "messages", "groups"
  add_foreign_key "messages", "users"
  add_foreign_key "profiles", "users"
end
