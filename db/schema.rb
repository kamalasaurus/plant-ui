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

ActiveRecord::Schema[7.0].define(version: 2022_09_28_163626) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leafs", force: :cascade do |t|
    t.bigint "population_id", null: false
    t.boolean "leaf_otu_1"
    t.boolean "leaf_otu_2"
    t.boolean "leaf_otu_3"
    t.boolean "leaf_otu_4"
    t.boolean "leaf_otu_5"
    t.boolean "leaf_otu_6"
    t.boolean "leaf_otu_8"
    t.boolean "leaf_otu_9"
    t.boolean "leaf_otu_10"
    t.boolean "leaf_otu_11"
    t.boolean "leaf_otu_12"
    t.boolean "leaf_otu_13"
    t.boolean "leaf_otu_14"
    t.boolean "leaf_otu_15"
    t.boolean "leaf_otu_16"
    t.boolean "leaf_otu_17"
    t.boolean "leaf_otu_18"
    t.boolean "leaf_otu_22"
    t.boolean "leaf_otu_23"
    t.boolean "leaf_otu_25"
    t.boolean "leaf_otu_27"
    t.boolean "leaf_otu_28"
    t.boolean "leaf_otu_29"
    t.boolean "leaf_otu_30"
    t.boolean "leaf_otu_31"
    t.boolean "leaf_otu_32"
    t.boolean "leaf_otu_33"
    t.boolean "leaf_otu_34"
    t.boolean "leaf_otu_35"
    t.boolean "leaf_otu_36"
    t.boolean "leaf_otu_37"
    t.boolean "leaf_otu_38"
    t.boolean "leaf_otu_42"
    t.boolean "leaf_otu_44"
    t.boolean "leaf_otu_51"
    t.boolean "leaf_otu_52"
    t.boolean "leaf_otu_57"
    t.boolean "leaf_otu_58"
    t.boolean "leaf_otu_63"
    t.boolean "leaf_otu_66"
    t.boolean "leaf_otu_67"
    t.boolean "leaf_otu_68"
    t.boolean "leaf_otu_70"
    t.boolean "leaf_otu_73"
    t.boolean "leaf_otu_74"
    t.boolean "leaf_otu_77"
    t.boolean "leaf_otu_78"
    t.boolean "leaf_otu_84"
    t.boolean "leaf_otu_89"
    t.boolean "leaf_otu_93"
    t.boolean "leaf_otu_94"
    t.boolean "leaf_otu_96"
    t.boolean "leaf_otu_100"
    t.boolean "leaf_otu_101"
    t.boolean "leaf_otu_109"
    t.boolean "leaf_otu_115"
    t.boolean "leaf_otu_116"
    t.boolean "leaf_otu_117"
    t.boolean "leaf_otu_120"
    t.boolean "leaf_otu_137"
    t.boolean "leaf_otu_152"
    t.boolean "leaf_otu_157"
    t.boolean "leaf_otu_179"
    t.boolean "leaf_otu_246"
    t.boolean "leaf_otu_365"
    t.float "leaf_microbiota_richness"
    t.float "leaf_microbiota_shannon"
    t.float "leaf_microbiota_pcoa1"
    t.float "leaf_microbiota_pcoa2"
    t.float "leaf_pathobiota_richness"
    t.float "leaf_pathobiota_shannon"
    t.float "leaf_pathobiota_pcoa1"
    t.float "leaf_pathobiota_pcoa2"
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

  create_table "roots", force: :cascade do |t|
    t.bigint "population_id", null: false
    t.boolean "root_otu_1"
    t.boolean "root_otu_2"
    t.boolean "root_otu_3"
    t.boolean "root_otu_4"
    t.boolean "root_otu_5"
    t.boolean "root_otu_6"
    t.boolean "root_otu_7"
    t.boolean "root_otu_9"
    t.boolean "root_otu_11"
    t.boolean "root_otu_16"
    t.boolean "root_otu_17"
    t.boolean "root_otu_19"
    t.boolean "root_otu_20"
    t.boolean "root_otu_21"
    t.boolean "root_otu_24"
    t.boolean "root_otu_26"
    t.boolean "root_otu_28"
    t.boolean "root_otu_30"
    t.boolean "root_otu_41"
    t.boolean "root_otu_46"
    t.boolean "root_otu_49"
    t.boolean "root_otu_50"
    t.boolean "root_otu_51"
    t.boolean "root_otu_58"
    t.boolean "root_otu_63"
    t.boolean "root_otu_64"
    t.boolean "root_otu_70"
    t.boolean "root_otu_75"
    t.boolean "root_otu_76"
    t.boolean "root_otu_100"
    t.boolean "root_otu_102"
    t.boolean "root_otu_114"
    t.boolean "root_otu_121"
    t.boolean "root_otu_122"
    t.boolean "root_otu_144"
    t.boolean "root_otu_146"
    t.boolean "root_otu_156"
    t.boolean "root_otu_163"
    t.boolean "root_otu_174"
    t.boolean "root_otu_199"
    t.boolean "root_otu_238"
    t.boolean "root_otu_258"
    t.boolean "root_otu_284"
    t.boolean "root_otu_989"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id"], name: "index_roots_on_population_id"
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
  add_foreign_key "roots", "populations"
  add_foreign_key "seeds", "populations"
  add_foreign_key "seeds", "seeds", column: "parent_id"
  add_foreign_key "tubes", "seedboxes"
  add_foreign_key "tubes", "seeds"
end
