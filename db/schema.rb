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

ActiveRecord::Schema.define(version: 2018_12_13_053858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artifacts", force: :cascade do |t|
    t.string "name"
    t.string "importance"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_artifacts_on_location_id"
  end

  create_table "cheat_sheets", force: :cascade do |t|
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_cheat_sheets_on_world_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.string "type"
    t.string "info"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_encounters_on_world_id"
  end

  create_table "encounters_locations", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "encounter_id"
    t.index ["encounter_id"], name: "index_encounters_locations_on_encounter_id"
    t.index ["location_id"], name: "index_encounters_locations_on_location_id"
  end

  create_table "encounters_vignettes", force: :cascade do |t|
    t.bigint "encounter_id"
    t.bigint "vignette_id"
    t.index ["encounter_id"], name: "index_encounters_vignettes_on_encounter_id"
    t.index ["vignette_id"], name: "index_encounters_vignettes_on_vignette_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_factions_on_world_id"
  end

  create_table "gods", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_gods_on_world_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "info"
    t.bigint "world_id"
    t.boolean "important"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_locations_on_world_id"
  end

  create_table "locations_npcs", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "npc_id"
    t.index ["location_id"], name: "index_locations_npcs_on_location_id"
    t.index ["npc_id"], name: "index_locations_npcs_on_npc_id"
  end

  create_table "locations_rewards", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "reward_id"
    t.index ["location_id"], name: "index_locations_rewards_on_location_id"
    t.index ["reward_id"], name: "index_locations_rewards_on_reward_id"
  end

  create_table "locations_sessions", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "session_id"
    t.index ["location_id"], name: "index_locations_sessions_on_location_id"
    t.index ["session_id"], name: "index_locations_sessions_on_session_id"
  end

  create_table "loots", force: :cascade do |t|
    t.string "type"
    t.string "description"
    t.string "image_url"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_loots_on_world_id"
  end

  create_table "npc_motivators", force: :cascade do |t|
    t.string "type"
    t.string "description"
    t.bigint "cheat_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheat_sheet_id"], name: "index_npc_motivators_on_cheat_sheet_id"
  end

  create_table "npc_names", force: :cascade do |t|
    t.string "name"
    t.bigint "cheat_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheat_sheet_id"], name: "index_npc_names_on_cheat_sheet_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.string "goal"
    t.string "image_url"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_npcs_on_world_id"
  end

  create_table "npcs_vignettes", force: :cascade do |t|
    t.bigint "npc_id"
    t.bigint "vignette_id"
    t.index ["npc_id"], name: "index_npcs_vignettes_on_npc_id"
    t.index ["vignette_id"], name: "index_npcs_vignettes_on_vignette_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_races_on_world_id"
  end

  create_table "recaps", force: :cascade do |t|
    t.string "description"
    t.bigint "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_recaps_on_session_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.string "type"
    t.string "image_url"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_rewards_on_world_id"
  end

  create_table "rewards_vignettes", force: :cascade do |t|
    t.bigint "reward_id"
    t.bigint "vignette_id"
    t.index ["reward_id"], name: "index_rewards_vignettes_on_reward_id"
    t.index ["vignette_id"], name: "index_rewards_vignettes_on_vignette_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "datetime"
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_sessions_on_world_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vignettes", force: :cascade do |t|
    t.string "problem_description"
    t.bigint "cheat_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheat_sheet_id"], name: "index_vignettes_on_cheat_sheet_id"
  end

  create_table "worlds", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "history"
    t.string "map_url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_worlds_on_user_id"
  end

  add_foreign_key "artifacts", "locations"
  add_foreign_key "cheat_sheets", "worlds"
  add_foreign_key "encounters", "worlds"
  add_foreign_key "encounters_locations", "encounters"
  add_foreign_key "encounters_locations", "locations"
  add_foreign_key "encounters_vignettes", "encounters"
  add_foreign_key "encounters_vignettes", "vignettes"
  add_foreign_key "factions", "worlds"
  add_foreign_key "gods", "worlds"
  add_foreign_key "locations", "worlds"
  add_foreign_key "locations_npcs", "locations"
  add_foreign_key "locations_npcs", "npcs"
  add_foreign_key "locations_rewards", "locations"
  add_foreign_key "locations_rewards", "rewards"
  add_foreign_key "locations_sessions", "locations"
  add_foreign_key "locations_sessions", "sessions"
  add_foreign_key "loots", "worlds"
  add_foreign_key "npc_motivators", "cheat_sheets"
  add_foreign_key "npc_names", "cheat_sheets"
  add_foreign_key "npcs", "worlds"
  add_foreign_key "npcs_vignettes", "npcs"
  add_foreign_key "npcs_vignettes", "vignettes"
  add_foreign_key "races", "worlds"
  add_foreign_key "recaps", "sessions"
  add_foreign_key "rewards", "worlds"
  add_foreign_key "rewards_vignettes", "rewards"
  add_foreign_key "rewards_vignettes", "vignettes"
  add_foreign_key "sessions", "worlds"
  add_foreign_key "vignettes", "cheat_sheets"
  add_foreign_key "worlds", "users"
end
