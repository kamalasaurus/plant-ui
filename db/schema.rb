# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_23_164405) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.integer "elevation"
    t.float "mean_annual_temperature"
    t.float "mean_coldest_month_temperature"
    t.float "winter_precipitations"
    t.float "summer_precipitations"
    t.float "autumn_precipitations"
    t.float "spring_precipitations"
    t.float "nitrogen"
    t.float "carbon_nitrogen_ratio"
    t.float "ph"
    t.float "phosphorus"
    t.float "calcium"
    t.float "magnesium"
    t.float "sodium"
    t.float "potassium"
    t.float "iron"
    t.float "aluminium"
    t.float "water_holding_capacity"
    t.float "organic_carbon"
    t.float "soil_organic_matter"
    t.float "manganese"
    t.bigint "population_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id"], name: "index_locations_on_population_id"
  end

  create_table "populations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subpopulation", null: false
    t.index ["name", "subpopulation"], name: "index_populations_on_name_and_subpopulation", unique: true
  end

  create_table "seedboxes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_seedboxes_on_name", unique: true
  end

  create_table "seeds", force: :cascade do |t|
    t.string "species", null: false
    t.integer "generation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accession", null: false
    t.bigint "parent_id"
    t.bigint "population_id", null: false
    t.index ["parent_id"], name: "index_seeds_on_parent_id"
    t.index ["population_id"], name: "index_seeds_on_population_id"
    t.index ["species", "generation", "accession", "population_id"], name: "uniqueness_index", unique: true
  end

  create_table "tubes", force: :cascade do |t|
    t.bigint "seed_id", null: false
    t.bigint "seedbox_id", null: false
    t.integer "position", null: false
    t.decimal "volume"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seed_id"], name: "index_tubes_on_seed_id"
    t.index ["seedbox_id", "position"], name: "index_tubes_on_seedbox_id_and_position", unique: true
    t.index ["seedbox_id"], name: "index_tubes_on_seedbox_id"
  end

  add_foreign_key "locations", "populations"
  add_foreign_key "seeds", "populations"
  add_foreign_key "seeds", "seeds", column: "parent_id"
  add_foreign_key "tubes", "seedboxes"
  add_foreign_key "tubes", "seeds"
end
