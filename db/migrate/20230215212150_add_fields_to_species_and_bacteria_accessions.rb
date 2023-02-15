class AddFieldsToSpeciesAndBacteriaAccessions < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :common_name, :string
    add_column :bacteria_accessions, :uncertain_species, :boolean
  end
end
