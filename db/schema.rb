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

ActiveRecord::Schema.define(version: 20150420055600) do

  create_table "layers", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lights", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.integer  "user_id"
    t.string   "common_name",                           null: false
    t.integer  "us_zone_max"
    t.integer  "cdn_zone_max"
    t.integer  "type_id"
    t.integer  "light_id"
    t.float    "height_min"
    t.float    "height_max"
    t.boolean  "drought_resistant"
    t.boolean  "p_n_fixer"
    t.boolean  "p_biomass"
    t.boolean  "p_hedgerow"
    t.boolean  "p_nutrient_accumulator"
    t.boolean  "p_cover_crop"
    t.boolean  "p_windbreak"
    t.boolean  "p_mulch"
    t.boolean  "p_repel_pests"
    t.boolean  "p_repel_invaders"
    t.boolean  "p_taproot"
    t.boolean  "h_edible"
    t.boolean  "h_medicinal"
    t.boolean  "h_oil"
    t.boolean  "h_tea"
    t.boolean  "h_basket"
    t.boolean  "h_dye"
    t.boolean  "h_fibre"
    t.boolean  "h_fragrance"
    t.boolean  "h_gourd"
    t.boolean  "h_poles"
    t.boolean  "h_polish"
    t.boolean  "h_repellent"
    t.boolean  "h_soap"
    t.boolean  "h_wood"
    t.boolean  "e_air_purifier"
    t.boolean  "e_erosion_control"
    t.boolean  "e_fire_retardant"
    t.boolean  "e_flood_management"
    t.boolean  "e_toxin_absorber"
    t.boolean  "e_water_purifier"
    t.string   "description"
    t.string   "sources"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "leaves_id"
    t.integer  "layer_id",                  default: 0, null: false
    t.integer  "layer2_id"
    t.string   "family"
    t.string   "genus",                                 null: false
    t.string   "species"
    t.string   "subspecies"
    t.integer  "spread_min"
    t.integer  "spread_max"
    t.integer  "cdn_zone_min"
    t.integer  "us_zone_min"
    t.integer  "rhs_zone_min"
    t.integer  "rhs_zone_max"
    t.integer  "origin_id"
    t.string   "native_to"
    t.integer  "habitat_id"
    t.integer  "moisture_id"
    t.integer  "fertility_id"
    t.integer  "salt_tolerance_id"
    t.integer  "ph_id"
    t.boolean  "has_jugolones"
    t.boolean  "tolerates_jugolones"
    t.boolean  "susceptible_to_jugolones"
    t.boolean  "p_ground_cover"
    t.boolean  "n_allelopathic"
    t.boolean  "n_dispersive"
    t.boolean  "n_expansive"
    t.boolean  "n_hay_fever"
    t.boolean  "n_persistent"
    t.boolean  "n_sprawling_vigorous_vine"
    t.boolean  "n_stings"
    t.boolean  "n_spiny_thorny"
    t.boolean  "n_poisonous"
    t.boolean  "a_poultry"
    t.boolean  "a_feed"
    t.boolean  "a_habitat"
    t.boolean  "a_insects"
    t.boolean  "a_hummingbirds"
  end

  add_index "plants", ["us_zone_max", "cdn_zone_max", "type_id", "light_id", "common_name"], name: "main_index"

  create_table "rails", force: true do |t|
    t.string   "destroy"
    t.string   "scaffold"
    t.string   "LightOptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.boolean  "superadmin",      default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
