class AddBacteriaIndices < ActiveRecord::Migration[7.0]
  def change
    add_index :freezers, :name, unique: true
    add_index :freezer_racks, %i[freezer_id name], unique: true
    add_index :bacteria_boxes, %i[freezer_rack_id name], unique: true
    add_index :bacteria_tubes, %i[bacteria_box_id position], unique: true
    add_index :bacteria_populations, :name, unique: true
    add_index :bacteria_locations, %i[bacteria_population_id latitude longitude], name: 'bacteria_locations_index', unique: true
    add_index :bacteria_accessions, %i[bacteria_population_id sample_identity], name: 'bacteria_accessoins_index', unique: true
    change_column_null :bacteria_accessions, :sample_identity, false
  end
end
