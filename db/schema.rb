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

ActiveRecord::Schema.define(version: 20140827133614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.string   "opponent"
    t.datetime "kickoff"
    t.string   "location"
    t.string   "map_url"
    t.text     "directions"
    t.string   "team_url"
    t.string   "halftime_snack"
    t.string   "end_of_game_snack"
    t.boolean  "is_home_game"
    t.integer  "our_score"
    t.integer  "opponent_score"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["team_id"], name: "index_games_on_team_id", using: :btree

  create_table "member_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.string   "nickname"
    t.integer  "jersey_number"
    t.integer  "member_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["member_type_id"], name: "index_members_on_member_type_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "posted_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "name"
    t.boolean  "is_current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "season_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "league_page"
  end

  add_index "teams", ["season_id"], name: "index_teams_on_season_id", using: :btree

end
