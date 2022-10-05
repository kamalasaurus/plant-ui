class AddAccessionReferenceToSeedsAndPlantSamples < ActiveRecord::Migration[7.0]
  def change
    add_reference :seeds, :accession_id, foreign_key: true
    add_reference :plant_samples, :accession_id, foreign_key: true
    remove_index :seeds, name: "uniqueness_index"
    add_index :seeds, %i[species generation accession_id], name: 'uniqueness_index', unique: true
    remove_column :seeds, :accession
    remove_column :seeds, :population_id
    remove_column :plant_samples, :population_id
  end
end
