# frozen_string_literal: true

module Types
  class BacteriaBoxType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :freezer_rack, Types::FreezerRackType
    field :bacteria_tubes, resolver: BacteriaTubeResolver
  end
end
