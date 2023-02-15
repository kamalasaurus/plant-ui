class CreateBacteriaLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :bacteria_locations do |t|
      t.float :latitude
      t.float :longitude
      t.references :bacteria_population, null: false, foreign_key: true

      t.timestamps
    end
  end
end
