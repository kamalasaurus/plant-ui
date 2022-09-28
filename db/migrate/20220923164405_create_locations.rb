class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.integer :elevation
      t.float :mean_annual_temperature
      t.float :mean_coldest_month_temperature
      t.float :winter_precipitations
      t.float :summer_precipitations
      t.float :autumn_precipitations
      t.float :spring_precipitations
      t.float :nitrogen
      t.float :carbon_nitrogen_ratio
      t.float :ph
      t.float :phosphorus
      t.float :calcium
      t.float :magnesium
      t.float :sodium
      t.float :potassium
      t.float :iron
      t.float :aluminium
      t.float :water_holding_capacity
      t.float :organic_carbon
      t.float :soil_organic_matter
      t.float :manganese
      t.references :population, null: false, foreign_key: true

      t.timestamps
    end
  end

  remove_column :populations, :location
end
