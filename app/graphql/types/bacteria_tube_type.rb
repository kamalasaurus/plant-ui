# frozen_string_literal: true

module Types
  class BacteriaTubeType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :position, Integer, required: true
    field :volume, Float
    field :duplicate_bacteria_tubes, String

    field :bacteria_accession, Types::BacteriaAccessionType
    field :bacteria_box, Types::BacteriaBoxType
  end
end
