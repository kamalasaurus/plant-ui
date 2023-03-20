# frozen_string_literal: true

module Types
  class BacteriaAccessionType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :date_collected, String
    field :wild, Boolean
    field :organ_tissue, String
    field :comment, String
    field :curator, String
    field :source_number, String
    field :sample_identity, String

    field :bacteria_population, Types::BacteriaPopulationType
    field :species, Types::SpeciesType
    field :source_species, Types::SpeciesType

    field :bacteria_tubes, resolver: BacteriaTubeResolver
  end
end
