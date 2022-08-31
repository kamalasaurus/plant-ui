# frozen_string_literal: true

class AddUniquenessIndices < ActiveRecord::Migration[7.0]
  def change
    change_column_null :seeds, :species, false
    change_column_null :seeds, :generation, false
    change_column_null :seeds, :accession, false
    change_column_null :seeds, :population_id, false

    change_column_null :populations, :name, false
    change_column_null :populations, :subpopulation, false

    change_column_null :seedboxes, :name, false

    change_column_null :tubes, :position, false

    add_index :populations, %i[name subpopulation], unique: true
    add_index :seeds, %i[species generation accession population_id], name: 'uniqueness_index', unique: true
    add_index :seedboxes, :name, unique: true
    add_index :tubes, %i[seedbox_id position], unique: true
  end
end
