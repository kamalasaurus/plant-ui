# frozen_string_literal: true

module Types
  class BacteriaLocationType < Types::BaseObject
    field :id, ID, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :bacteria_population, Types::BacteriaPopulationType
  end
end
