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

ActiveRecord::Schema.define(version: 2019_05_18_142704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "team_manager_events", force: :cascade do |t|
    t.integer "team_id"
    t.date "start_date"
    t.date "stop_date"
    t.string "description"
    t.string "location"
    t.string "venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_manager_player_photos", force: :cascade do |t|
    t.integer "player_id"
    t.text "caption"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "home_page"
    t.boolean "profile"
  end

  create_table "team_manager_player_videos", force: :cascade do |t|
    t.integer "player_id"
    t.string "video_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_manager_players", force: :cascade do |t|
    t.integer "team_id"
    t.string "name"
    t.integer "number"
    t.string "height"
    t.string "position"
    t.string "school"
    t.string "year"
    t.text "athletic_accomplishments"
    t.text "colleges_interested"
    t.string "gpa"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quote"
    t.string "sports"
    t.text "extracurricular_activities"
    t.text "reference_quotes"
    t.text "basketball_history"
    t.text "miscellaneous_information"
  end

  create_table "team_manager_site_photos", force: :cascade do |t|
    t.string "image"
    t.boolean "about_page"
    t.text "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_manager_teams", force: :cascade do |t|
    t.string "name"
    t.string "coach"
    t.string "year"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_manager_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_team_manager_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_team_manager_users_on_reset_password_token", unique: true
  end

end
