# frozen_string_literal: true

class CreateAccession < ActiveRecord::Migration[7.0]
  def change
    create_table :accessions do |t|
      t.references :population, null: false, foreign_key: true
      t.integer :accession_number
      t.index %i[population_id accession_number], unique: true

      t.timestamps
    end
  end
end
