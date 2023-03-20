# frozen_string_literal: true

module Mutations
  class CreateFreezer < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true

    # return type from the mutation
    type Types::FreezerType

    def resolve(name: nil)
      Freezer.create!(
        name:
      )
    end
  end
end
