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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_194311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessions", force: :cascade do |t|
    t.bigint "population_id", null: false
    t.integer "accession_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id", "accession_number"], name: "index_accessions_on_population_id_and_accession_number", unique: true
    t.index ["population_id"], name: "index_accessions_on_population_id"
  end

  create_table "bacteria_accessions", force: :cascade do |t|
    t.bigint "bacteria_population_id", null: false
    t.date "date_collected"
    t.boolean "wild"
    t.string "organ_tissue"
    t.string "comment"
    t.string "curator"
    t.bigint "species_id"
    t.bigint "source_species_id"
    t.string "source_number"
    t.string "sample_identity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bacteria_population_id"], name: "index_bacteria_accessions_on_bacteria_population_id"
    t.index ["source_species_id"], name: "index_bacteria_accessions_on_source_species_id"
    t.index ["species_id"], name: "index_bacteria_accessions_on_species_id"
  end

  create_table "bacteria_boxes", force: :cascade do |t|
    t.bigint "freezer_rack_id", null: false
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freezer_rack_id"], name: "index_bacteria_boxes_on_freezer_rack_id"
  end

  create_table "bacteria_locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.bigint "bacteria_population_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bacteria_population_id"], name: "index_bacteria_locations_on_bacteria_population_id"
  end

  create_table "bacteria_populations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bacteria_tubes", force: :cascade do |t|
    t.integer "position"
    t.bigint "bacteria_accession_id", null: false
    t.decimal "volume"
    t.bigint "duplicate_bacteria_tubes", default: [], array: true
    t.bigint "bacteria_box_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bacteria_accession_id"], name: "index_bacteria_tubes_on_bacteria_accession_id"
    t.index ["bacteria_box_id"], name: "index_bacteria_tubes_on_bacteria_box_id"
  end

  create_table "cytometry_readings", force: :cascade do |t|
    t.bigint "accession_id", null: false
    t.integer "minimum_peak"
    t.float "mean_f2"
    t.integer "peak_pattern", default: [], array: true
    t.integer "chromosome_count", default: [], array: true
    t.boolean "chromosome_count_certain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accession_id"], name: "index_cytometry_readings_on_accession_id"
  end

  create_table "freezer_racks", force: :cascade do |t|
    t.bigint "freezer_id", null: false
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freezer_id"], name: "index_freezer_racks_on_freezer_id"
  end

  create_table "freezers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaf_communities", force: :cascade do |t|
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
    t.index ["population_id"], name: "index_leaf_communities_on_population_id"
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

  create_table "plant_neighborhoods", force: :cascade do |t|
    t.bigint "population_id", null: false
    t.integer "plant_otu_1"
    t.integer "plant_otu_3"
    t.integer "plant_otu_4"
    t.integer "plant_otu_7"
    t.integer "plant_otu_8"
    t.integer "plant_otu_10"
    t.integer "plant_otu_15"
    t.integer "plant_otu_16"
    t.integer "plant_otu_18"
    t.integer "plant_otu_20"
    t.integer "plant_otu_27"
    t.integer "plant_otu_46"
    t.integer "plant_otu_49"
    t.integer "plant_otu_65"
    t.integer "plant_otu_67"
    t.integer "plant_otu_71"
    t.integer "plant_otu_72"
    t.integer "plant_otu_78"
    t.integer "plant_otu_83"
    t.integer "plant_otu_87"
    t.integer "plant_otu_88"
    t.integer "plant_otu_100"
    t.integer "plant_otu_109"
    t.integer "plant_otu_113"
    t.integer "plant_otu_114"
    t.integer "plant_otu_132"
    t.integer "plant_otu_136"
    t.integer "plant_otu_143"
    t.integer "plant_otu_145"
    t.integer "plant_otu_146"
    t.integer "plant_otu_147"
    t.integer "plant_otu_149"
    t.integer "plant_otu_154"
    t.integer "plant_otu_159"
    t.integer "plant_otu_179"
    t.integer "plant_otu_192"
    t.integer "plant_otu_196"
    t.integer "plant_otu_198"
    t.integer "plant_otu_202"
    t.integer "plant_otu_203"
    t.integer "plant_otu_204"
    t.integer "plant_otu_216"
    t.integer "plant_otu_223"
    t.integer "plant_otu_234"
    t.float "plant_richness"
    t.float "plant_shannon"
    t.float "plant_pcoa1"
    t.float "plant_pcoa2"
    t.float "plant_pcoa3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id"], name: "index_plant_neighborhoods_on_population_id"
  end

  create_table "plant_samples", force: :cascade do |t|
    t.string "label", null: false
    t.string "storage_method", null: false
    t.integer "quantity", null: false
    t.string "accession_tray"
    t.integer "replication_tray"
    t.string "row"
    t.integer "column"
    t.date "sowing_date"
    t.date "harvest_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "accession_id"
    t.bigint "species_id"
    t.index ["accession_id"], name: "index_plant_samples_on_accession_id"
    t.index ["species_id"], name: "index_plant_samples_on_species_id"
  end

  create_table "populations", force: :cascade do |t|
    t.string "population_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subpopulation", null: false
    t.index ["population_name", "subpopulation"], name: "index_populations_on_population_name_and_subpopulation", unique: true
  end

  create_table "root_communities", force: :cascade do |t|
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
    t.float "root_microbiota_richness"
    t.float "root_microbiota_shannon"
    t.float "root_microbiota_pcoa1"
    t.float "root_microbiota_pcoa2"
    t.float "root_pathobiota_richness"
    t.float "root_pathobiota_shannon"
    t.float "root_pathobiota_pcoa2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["population_id"], name: "index_root_communities_on_population_id"
  end

  create_table "seedboxes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_seedboxes_on_name", unique: true
  end

  create_table "seeds", force: :cascade do |t|
    t.integer "generation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.bigint "accession_id"
    t.bigint "species_id"
    t.index ["accession_id"], name: "index_seeds_on_accession_id"
    t.index ["parent_id"], name: "index_seeds_on_parent_id"
    t.index ["species_id", "generation", "accession_id"], name: "uniqueness_index", unique: true
    t.index ["species_id"], name: "index_seeds_on_species_id"
  end

  create_table "seeds_plant_samples", force: :cascade do |t|
    t.bigint "seed_id"
    t.bigint "plant_sample_id"
    t.index ["plant_sample_id"], name: "index_seeds_plant_samples_on_plant_sample_id"
    t.index ["seed_id", "plant_sample_id"], name: "index_seeds_plant_samples_on_seed_id_and_plant_sample_id", unique: true
    t.index ["seed_id"], name: "index_seeds_plant_samples_on_seed_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "genus"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genus", "species"], name: "index_species_on_genus_and_species", unique: true
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

  add_foreign_key "accessions", "populations"
  add_foreign_key "bacteria_accessions", "bacteria_populations"
  add_foreign_key "bacteria_accessions", "species"
  add_foreign_key "bacteria_accessions", "species", column: "source_species_id"
  add_foreign_key "bacteria_boxes", "freezer_racks"
  add_foreign_key "bacteria_locations", "bacteria_populations"
  add_foreign_key "bacteria_tubes", "bacteria_accessions"
  add_foreign_key "bacteria_tubes", "bacteria_boxes"
  add_foreign_key "cytometry_readings", "accessions"
  add_foreign_key "freezer_racks", "freezers"
  add_foreign_key "leaf_communities", "populations"
  add_foreign_key "locations", "populations"
  add_foreign_key "plant_neighborhoods", "populations"
  add_foreign_key "plant_samples", "accessions"
  add_foreign_key "plant_samples", "species"
  add_foreign_key "root_communities", "populations"
  add_foreign_key "seeds", "accessions"
  add_foreign_key "seeds", "seeds", column: "parent_id"
  add_foreign_key "seeds", "species"
  add_foreign_key "tubes", "seedboxes"
  add_foreign_key "tubes", "seeds"
end
