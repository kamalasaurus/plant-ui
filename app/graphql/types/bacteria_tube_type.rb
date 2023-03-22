# frozen_string_literal: true

module Types
  class BacteriaTubeType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :position, Integer, null: false
    field :volume, Float
    field :duplicate_bacteria_tubes, String

    field :bacteria_population, Types::BacteriaPopulationType
    field :bacteria_accession, Types::BacteriaAccessionType
    field :bacteria_box, Types::BacteriaBoxType
    field :freezer_rack, Types::FreezerRackType
    field :freezer, Types::FreezerType
  end
end
