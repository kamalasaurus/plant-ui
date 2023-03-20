# frozen_string_literal: true

module Types
  class SubspeciesType < Types::BaseObject
    field :id, ID, null: false
    field :strain, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :species, resolver: SpeciesResolver
  end
end
