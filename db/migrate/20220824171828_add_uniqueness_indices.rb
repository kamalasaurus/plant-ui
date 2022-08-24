class AddUniquenessIndices < ActiveRecord::Migration[7.0]
  def change
    add_index :populations, [:name, :subpopulation], unique: true
    add_index :seeds, [:species, :generation, :accession, :population_id], name: 'uniqueness_index', unique: true
    add_index :seedboxes, :name, unique: true
    add_index :tubes, [:seedbox_id, :position], unique: true
  end
end
