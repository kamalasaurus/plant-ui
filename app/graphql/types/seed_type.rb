# frozen_string_literal: true

module Types
  class SeedType < Types::BaseObject
    field :id, ID, null: false
    field :generation, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :parent_id, Integer
    field :accession_id, Integer
    field :species_id, Integer

    field :accession, Types::AccessionType
    field :species, Types::SpeciesType
    field :population, Types::PopulationType

    field :parent, Types::SeedType

    field :tubes, resolver: TubeResolver
    field :children, resolver: SeedResolver

    field :seeds_plant_samples, resolver: SeedsPlantSampleResolver
    field :plant_samples, resolver: PlantSampleResolver

    field :label, String, null: false
    field :abbreviation, String, null: false

    def label
      object.label
    end

    def abbreviation
      object.abbreviation
    end
  end
end
