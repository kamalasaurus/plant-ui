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

ActiveRecord::Schema[7.0].define(version: 20_220_823_181_424) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'bins', force: :cascade do |t|
    t.bigint 'seed_id', null: false
    t.string 'seedbox'
    t.integer 'location'
    t.integer 'quantity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['seed_id'], name: 'index_bins_on_seed_id'
  end

  create_table 'populations', force: :cascade do |t|
    t.string 'name'
    t.point 'location'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'subpopulation'
  end

  create_table 'seedboxes', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'seeds', force: :cascade do |t|
    t.string 'species'
    t.integer 'generation'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'accession'
    t.bigint 'parent_id'
    t.bigint 'population_id'
    t.index ['parent_id'], name: 'index_seeds_on_parent_id'
    t.index ['population_id'], name: 'index_seeds_on_population_id'
  end

  add_foreign_key 'bins', 'seeds'
  add_foreign_key 'seeds', 'populations'
  add_foreign_key 'seeds', 'seeds', column: 'parent_id'
end
