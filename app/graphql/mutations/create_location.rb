# frozen_string_literal: true

module Mutations
  class CreateLocation < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_id, Integer, required: true
    argument :latitude, Float
    argument :longitude, Float
    argument :elevation, Integer
    argument :mean_annual_temperature, Float
    argument :mean_coldest_month_temperature, Float
    argument :winter_precipitations, Float
    argument :summer_precipitations, Float
    argument :autumn_precipitations, Float
    argument :spring_precipitations, Float
    argument :nitrogen, Float
    argument :carbon_nitrogen_ratio, Float
    argument :ph, Float
    argument :phosphorus, Float
    argument :calcium, Float
    argument :magnesium, Float
    argument :sodium, Float
    argument :potassium, Float
    argument :iron, Float
    argument :aluminium, Float
    argument :water_holding_capacity, Float
    argument :organic_carbon, Float
    argument :soil_organic_matter, Float
    argument :manganese, Float

    # return type from the mutation
    type Types::LocationType

    def resolve(population_id: nil, latitude: nil, longitude: nil, elevation: nil, \
                mean_annual_temperature: nil, mean_coldest_month_temperature: nil, winter_precipitations: nil, \
                summer_precipitations: nil, autumn_precipitations: nil, spring_precipitations: nil, nitrogen: nil, \
                carbon_nitrogen_ratio: nil, ph: nil, phosphorus: nil, calcium: nil, magnesium: nil, sodium: nil, \
                potassium: nil, iron: nil, aluminium: nil, water_holding_capacity: nil, organic_carbon: nil, \
                soil_organic_matter: nil, manganese: nil)
      Location.create!(
        population_id:,
        latitude:,
        longitude:,
        elevation:,
        mean_annual_temperature:,
        mean_coldest_month_temperature:,
        winter_precipitations:,
        summer_precipitations:,
        autumn_precipitations:,
        spring_precipitations:,
        nitrogen:,
        carbon_nitrogen_ratio:,
        ph:,
        phosphorus:,
        calcium:,
        magnesium:,
        sodium:,
        potassium:,
        iron:,
        aluminium:,
        water_holding_capacity:,
        organic_carbon:,
        soil_organic_matter:,
        manganese:
      )
    end
  end
end
