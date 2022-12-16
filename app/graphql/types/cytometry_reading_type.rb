# frozen_string_literal: true

module Types
  class CytometryReadingType < Types::BaseObject
    field :id, ID, null: false
    field :accession_id, Integer, null: false
    field :minimum_peak, Integer
    field :mean_f2, Float
    field :peak_pattern, Integer
    field :chromosome_count, Integer
    field :chromosome_count_certain, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :accession, Types::AccessionType, null: false
  end
end
