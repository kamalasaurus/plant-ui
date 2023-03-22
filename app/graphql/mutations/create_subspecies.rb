# frozen_string_literal: true

module Mutations
  class CreateSubspecies < BaseMutation
    # arguments passed to the `resolve` method
    argument :species_id, Integer, required: true
    argument :strain, String, required: true

    # return type from the mutation
    type Types::SubspeciesType

    def resolve(species_id: nil, strain: nil)
      Subspecies.create!(
        species_id:,
        strain:
      )
    end
  end
end
