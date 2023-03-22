# frozen_string_literal: true

module Mutations
  class CreateFreezerRack < BaseMutation
    # arguments passed to the `resolve` method
    argument :freezer_id, Integer, required: true
    argument :name, String, required: true

    # return type from the mutation
    type Types::FreezerRackType

    def resolve(freezer_id: nil, name: nil)
      FreezerRack.create!(
        freezer_id:,
        name:
      )
    end
  end
end
