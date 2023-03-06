class AddFieldsToSpeciesAndBacteriaAccessions < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :common_name, :string
    add_column :species, :kingdom, :string
    add_column :bacteria_accessions, :uncertain_species, :boolean

    create_table :subspecies do |t|
      t.string :strain
      t.references :species, null: false, foreign_key: true
      t.index %i[strain species_id], unique: true

      t.timestamps
    end

    # create_table :transformations do |t|
    #   t.string :plasmid
    #   t.index :plasmid, unique: true

    #   t.timestamps
    # end

    # create_table :transformations_bacteria_accessions do |t|
    #   t.belongs_to :transformation
    #   t.belongs_to :bacteria_accession
    #   t.index %i[transformation_id bacteria_accession_id], name: 'trans_acc__index', unique: true
    # end
  end
end
