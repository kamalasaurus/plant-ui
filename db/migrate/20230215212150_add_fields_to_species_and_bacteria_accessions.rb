class AddFieldsToSpeciesAndBacteriaAccessions < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :common_name, :string
    add_column :species, :kingdom, :string
    add_column :bacteria_accessions, :uncertain_species, :boolean

    create_table :subspecies_or_strain do |t|
      t.string :strain
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
