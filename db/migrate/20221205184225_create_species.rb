# frozen_string_literal: true

class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :genus
      t.string :species
      t.index %i[genus species], unique: true

      t.timestamps
    end

    remove_column :seeds, :species
    remove_column :plant_samples, :species

    add_reference :seeds, :species, foreign_key: true
    add_reference :plant_samples, :species, foreign_key: true
    add_index :seeds, %i[species_id generation accession_id], name: 'uniqueness_index', unique: true
  end
end
