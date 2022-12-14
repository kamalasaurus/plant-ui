# frozen_string_literal: true

module Types
  class PopulationType < Types::BaseObject
    field :id, ID, null: false
    field :population_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :subpopulation, String, null: false
  end
end
