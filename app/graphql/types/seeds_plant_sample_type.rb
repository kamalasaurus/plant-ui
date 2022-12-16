# frozen_string_literal: true

module Types
  class SeedsPlantSampleType < Types::BaseObject
    field :id, ID, null: false
    field :seed_id, Integer
    field :plant_sample_id, Integer

    field :seed, Types::SeedType
    field :plant_sample, Types::PlantSampleType
  end
end
