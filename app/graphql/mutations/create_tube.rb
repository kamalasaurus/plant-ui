module Mutations
  class CreateTube < BaseMutation
    # arguments passed to the `resolve` method
    argument :seed_id, Integer, required: true
    argument :seedbox_id, Integer, required: true
    argument :position, Integer, required: true
    argument :volume, Float
    argument :count, Integer

    # return type from the mutation
    type Types::TubeType

    def resolve(
      seed_id: nil,
      seedbox_id: nil,
      position: nil,
      volume: nil,
      count: nil
    )
      Tube.create!(
        seed_id: seed_id,
        seedbox_id: seedbox_id,
        position: position,
        volume: volume,
        count: count
      )
    end
  end
end