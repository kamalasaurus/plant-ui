# frozen_string_literal: true

module Types
  class FreezerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :freezer_racks, resolver: FreezerRackResolver
  end
end
