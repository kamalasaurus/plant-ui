# frozen_string_literal: true

module Types
  class LocationType < Types::BaseObject
    field :id, ID, null: false
    field :latitude, Float
    field :longitude, Float
    field :elevation, Integer
    field :mean_annual_temperature, Float
    field :mean_coldest_month_temperature, Float
    field :winter_precipitations, Float
    field :summer_precipitations, Float
    field :autumn_precipitations, Float
    field :spring_precipitations, Float
    field :nitrogen, Float
    field :carbon_nitrogen_ratio, Float
    field :ph, Float
    field :phosphorus, Float
    field :calcium, Float
    field :magnesium, Float
    field :sodium, Float
    field :potassium, Float
    field :iron, Float
    field :aluminium, Float
    field :water_holding_capacity, Float
    field :organic_carbon, Float
    field :soil_organic_matter, Float
    field :manganese, Float
    field :population_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :population, resolver: PopulationResolver
  end
end
