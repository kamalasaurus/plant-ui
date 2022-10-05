class CreatePlantSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_samples do |t|
      t.string :species, null: false
      t.string :label, null: false
      t.string :storage_method, null: false
      t.integer :quantity, null: false
      t.string :accession_tray
      t.integer :replication_tray
      t.string :row
      t.integer :column
      t.date :sowing_date
      t.date :harvest_date
      t.references :population, null: false, foreign_key: true

      t.timestamps
    end

    create_table :seeds_plant_samples do |t|
      t.belongs_to :seed
      t.belongs_to :plant_sample
      t.index %i[seed_id plant_sample_id], unique: true
    end
  end
end
