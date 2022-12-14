# frozen_string_literal: true

module Types
  class SeedsPlantSampleType < Types::BaseObject
    field :id, ID, null: false
    field :seed_id, Integer
    field :plant_sample_id, Integer
  end
end
