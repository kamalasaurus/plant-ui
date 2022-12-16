# frozen_string_literal: true

module Types
  class TubeType < Types::BaseObject
    field :id, ID, null: false
    field :seed_id, Integer, null: false
    field :seedbox_id, Integer, null: false
    field :position, Integer, null: false
    field :volume, Float
    field :count, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :seed, Types::SeedType
    field :seedbox, Types::SeedboxType

    field :abbreviation, String
    field :amount, String
    field :isCritical, Boolean

    def abbreviation
      object.abbreviation
    end

    def amount
      object.amount
    end

    def isCritical
      object.critical?
    end
  end
end
