# frozen_string_literal: true

module Types
  class AccessionType < Types::BaseObject
    field :id, ID, null: false
    field :population_id, Integer, null: false
    field :accession_number, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :population, Types::PopulationType
    field :cytometry_reading, Types::CytometryReadingType
    field :seeds, resolver: SeedResolver
    field :plant_samples, resolver: PlantSampleResolver

    field :name, String, null: false

    def name
      object.name
    end
  end
end
