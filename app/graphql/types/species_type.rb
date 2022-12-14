# frozen_string_literal: true

module Types
  class SpeciesType < Types::BaseObject
    field :id, ID, null: false
    field :genus, String
    field :species, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
