class CreatePlantSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_samples do |t|
      t.string :species, null: false
      t.string :accession, null: false
      t.string :label, null: false
      t.string :storage_method, null: false
      t.integer :quantity, null: false
      t.integer :generation
      t.string :accession_tray
      t.integer :replication_tray
      t.string :row
      t.integer :column
      t.date :sowing_date
      t.date :harvest_date
      t.references :seed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
