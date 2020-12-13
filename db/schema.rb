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

ActiveRecord::Schema.define(version: 2020_12_13_024215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characterclasses", force: :cascade do |t|
    t.string "name"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "pronouns"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "player_id", null: false
    t.bigint "deity_id"
    t.bigint "race_id", null: false
    t.bigint "characterclass_id", null: false
    t.bigint "house_id"
    t.bigint "guild_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["characterclass_id"], name: "index_characters_on_characterclass_id"
    t.index ["deity_id"], name: "index_characters_on_deity_id"
    t.index ["guild_id"], name: "index_characters_on_guild_id"
    t.index ["house_id"], name: "index_characters_on_house_id"
    t.index ["player_id"], name: "index_characters_on_player_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "deities", force: :cascade do |t|
    t.string "name"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guilds", force: :cascade do |t|
    t.string "name"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_guilds_on_player_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_houses_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "emailaddress"
    t.string "playertype"
    t.date "joindate", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resttypes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skilldeliveries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skillgroups", force: :cascade do |t|
    t.string "name"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "incant"
    t.integer "tier"
    t.boolean "playeravailable"
    t.bigint "skillgroup_id", null: false
    t.bigint "resttype_id", null: false
    t.bigint "skilldelivery_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resttype_id"], name: "index_skills_on_resttype_id"
    t.index ["skilldelivery_id"], name: "index_skills_on_skilldelivery_id"
    t.index ["skillgroup_id"], name: "index_skills_on_skillgroup_id"
  end

  add_foreign_key "characters", "characterclasses"
  add_foreign_key "characters", "deities"
  add_foreign_key "characters", "guilds"
  add_foreign_key "characters", "houses"
  add_foreign_key "characters", "players"
  add_foreign_key "characters", "races"
  add_foreign_key "guilds", "players", name: "guildmaster_id"
  add_foreign_key "houses", "players", name: "thane_id"
  add_foreign_key "skills", "resttypes"
  add_foreign_key "skills", "skilldeliveries"
  add_foreign_key "skills", "skillgroups"
end
