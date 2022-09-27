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

ActiveRecord::Schema[7.0].define(version: 2022_09_27_210805) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leafs", force: :cascade do |t|
    t.bigint "population_id", null: false
    t.boolean "OTU_1"
    t.boolean "OTU_2"
    t.boolean "OTU_3"
    t.boolean "OTU_4"
    t.boolean "OTU_5"
    t.boolean "OTU_6"
    t.boolean "OTU_8"
    t.boolean "OTU_9"
    t.boolean "OTU_10"
    t.boolean "OTU_11"
    t.boolean "OTU_12"
    t.boolean "OTU_13"
    t.boolean "OTU_14"
    t.boolean "OTU_15"
    t.boolean "OTU_16"
    t.boolean "OTU_17"
    t.boolean "OTU_18"
    t.boolean "OTU_22"
    t.boolean "OTU_23"
    t.boolean "OTU_25"
    t.boolean "OTU_27"
    t.boolean "OTU_28"
    t.boolean "OTU_29"
    t.boolean "OTU_30"
    t.boolean "OTU_31"
    t.boolean "OTU_32"
    t.boolean "OTU_33"
    t.boolean "OTU_34"
    t.boolean "OTU_35"
    t.boolean "OTU_36"
    t.boolean "OTU_37"
    t.boolean "OTU_38"
    t.boolean "OTU_42"
    t.boolean "OTU_44"
    t.boolean "OTU_51"
    t.boolean "OTU_52"
    t.boolean "OTU_57"
    t.boolean "OTU_58"
    t.boolean "OTU_63"
    t.boolean "OTU_66"
    t.boolean "OTU_67"
    t.boolean "OTU_68"
    t.boolean "OTU_70"
    t.boolean "OTU_73"
    t.boolean "OTU_74"
    t.boolean "OTU_77"
    t.boolean "OTU_78"
    t.boolean "OTU_84"
    t.boolean "OTU_89"
    t.boolean "OTU_93"
    t.boolean "OTU_94"
    t.boolean "OTU_96"
    t.boolean "OTU_100"
    t.boolean "OTU_101"
    t.boolean "OTU_109"
    t.boolean "OTU_115"
    t.boolean "OTU_116"
    t.boolean "OTU_117"
    t.boolean "OTU_120"
    t.boolean "OTU_137"
    t.boolean "OTU_152"
    t.boolean "OTU_157"
    t.boolean "OTU_179"
    t.boolean "OTU_246"
    t.boolean "OTU_365"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id"], name: "index_leafs_on_population_id"
  end

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

  add_foreign_key "leafs", "populations"
  add_foreign_key "locations", "populations"
  add_foreign_key "seeds", "populations"
  add_foreign_key "seeds", "seeds", column: "parent_id"
  add_foreign_key "tubes", "seedboxes"
  add_foreign_key "tubes", "seeds"
end
