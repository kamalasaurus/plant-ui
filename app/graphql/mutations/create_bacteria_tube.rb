# frozen_string_literal: true

module Mutations
  class CreateBacteriaTube < BaseMutation
    # arguments passed to the `resolve` method
    argument :bacteria_accession_id, Integer, required: true
    argument :bacteria_box_id, Integer, required: true
    argument :position, Integer, required: true
    argument :volume, Float
    argument :duplicate_bacteria_tubes, String

    # return type from the mutation
    type Types::BacteriaTubeType

    def resolve(
      bacteria_accession_id: nil,
      bacteria_box_id: nil,
      position: nil,
      volume: nil,
      duplicate_bacteria_tubes: nil
    )
      BacteriaTube.create!(
        bacteria_accession_id:,
        bacteria_box_id:,
        position:,
        volume:,
        duplicate_bacteria_tubes:
      )
    end
  end
end
