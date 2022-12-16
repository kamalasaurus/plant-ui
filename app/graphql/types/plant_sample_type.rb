# frozen_string_literal: true

module Types
  class PlantSampleType < Types::BaseObject
    field :id, ID, null: false
    field :label, String, null: false
    field :storage_method, String, null: false
    field :quantity, Integer, null: false
    field :accession_tray, String
    field :replication_tray, Integer
    field :row, String
    field :column, Integer
    field :sowing_date, GraphQL::Types::ISO8601Date
    field :harvest_date, GraphQL::Types::ISO8601Date
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :accession_id, Integer
    field :species_id, Integer

    field :seeds_plant_samples, [Types::SeedsPlantSampleType]
    field :seeds, [Types::SeedType]
    field :accession, Types::AccessionType
    field :population, Types::PopulationType
    field :species, Types::SpeciesType

    field :hasCytometry, Boolean

    def hasCytometry
      object.cytometrized?
    end
  end
end
