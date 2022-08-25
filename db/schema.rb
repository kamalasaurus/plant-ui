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

ActiveRecord::Schema[7.0].define(version: 2022_08_24_171828) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "populations", force: :cascade do |t|
    t.string "name", null: false
    t.point "location"
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

  add_foreign_key "seeds", "populations"
  add_foreign_key "seeds", "seeds", column: "parent_id"
  add_foreign_key "tubes", "seedboxes"
  add_foreign_key "tubes", "seeds"
end
