# frozen_string_literal: true

module Types
  class PopulationType < Types::BaseObject
    field :id, ID, null: false
    field :population_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :subpopulation, String, null: false

    field :accessions, resolver: AccessionResolver
    field :leaf_community, Types::LeafCommunityType
    field :location, Types::LocationType
    field :plant_neighborhood, Types::PlantNeighborhoodType
    field :root_community, Types::RootCommunityType

    field :plant_samples, resolver: PlantSampleResolver
    field :seeds, resolver: SeedResolver

    field :name, String

    def name
      object.name
    end
  end
end
