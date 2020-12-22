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

ActiveRecord::Schema.define(version: 2020_12_22_022705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characterclasses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "pronouns"
    t.integer "level", default: 1
    t.string "status", default: "Active"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "user_id", null: false
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
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "characterskills", force: :cascade do |t|
    t.bigint "skill_id", null: false
    t.bigint "character_id", null: false
    t.date "aquiredate", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_characterskills_on_character_id"
    t.index ["skill_id"], name: "index_characterskills_on_skill_id"
  end

  create_table "deities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eventattendances", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "character_id", null: false
    t.date "registerdate", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id", "event_id"], name: "index_eventattendances_on_character_id_and_event_id", unique: true
    t.index ["character_id"], name: "index_eventattendances_on_character_id"
    t.index ["event_id"], name: "index_eventattendances_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "startdate", null: false
    t.date "enddate", null: false
    t.string "description", null: false
    t.integer "castcount", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "explogs", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.date "aquiredate", default: -> { "CURRENT_TIMESTAMP" }
    t.string "name", null: false
    t.string "description", null: false
    t.integer "amount", null: false
    t.bigint "grantedby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_explogs_on_character_id"
    t.index ["grantedby_id"], name: "index_explogs_on_grantedby_id"
  end

  create_table "guilds", force: :cascade do |t|
    t.string "name"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.date "createdate", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resttypes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skilldeliveries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skillgroups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "playeravailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "incant"
    t.string "target"
    t.string "prop"
    t.integer "tier"
    t.boolean "playeravailable"
    t.bigint "skillgroup_id", null: false
    t.bigint "resttype_id", null: false
    t.bigint "skilldelivery_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resttype_id"], name: "index_skills_on_resttype_id"
    t.index ["skilldelivery_id"], name: "index_skills_on_skilldelivery_id"
    t.index ["skillgroup_id"], name: "index_skills_on_skillgroup_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "usertype", default: "Player"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "characters", "characterclasses"
  add_foreign_key "characters", "deities"
  add_foreign_key "characters", "guilds"
  add_foreign_key "characters", "houses"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
  add_foreign_key "characterskills", "characters"
  add_foreign_key "characterskills", "skills"
  add_foreign_key "eventattendances", "characters"
  add_foreign_key "eventattendances", "events"
  add_foreign_key "explogs", "characters"
  add_foreign_key "explogs", "users", column: "grantedby_id"
  add_foreign_key "skills", "resttypes"
  add_foreign_key "skills", "skilldeliveries"
  add_foreign_key "skills", "skillgroups"
end
