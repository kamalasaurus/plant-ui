# frozen_string_literal: true

module Mutations
  class CreateBacteriaLocation < BaseMutation
    # arguments passed to the `resolve` method
    argument :bacteria_population_id, Integer, required: true
    argument :latitude, Float, required: true
    argument :longitude, Float, required: true

    # return type from the mutation
    type Types::BacteriaLocationType

    def resolve(bacteria_population_id: nil, latitude: nil, longitude: nil)
      BacteriaLocation.create!(
        bacteria_population_id:,
        latitude:,
        longitude:
      )
    end
  end
end
