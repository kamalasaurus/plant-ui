class AddAccessionReferenceToSeedsAndPlantSamples < ActiveRecord::Migration[7.0]
  def change
    remove_index :seeds, name: 'uniqueness_index'
    remove_column :seeds, :accession
    remove_column :seeds, :population_id
    remove_column :plant_samples, :population_id

    add_reference :seeds, :accession, foreign_key: true
    add_reference :plant_samples, :accession, foreign_key: true
    add_index :seeds, %i[species generation accession_id], name: 'uniqueness_index', unique: true
  end
end
