# frozen_string_literal: true

module Types
  class SpeciesType < Types::BaseObject
    field :id, ID, null: false
    field :genus, String
    field :species, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :seeds, [Types::SeedType]
    field :plant_samples, [Types::PlantSampleType]

    field :name, String
    field :abbreviation, String

    def name
      object.name
    end

    def abbreviation
      object.abbreviation
    end
  end
end
