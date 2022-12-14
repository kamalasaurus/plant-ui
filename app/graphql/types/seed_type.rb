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
  end
end
