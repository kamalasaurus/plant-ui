# frozen_string_literal: true

module Mutations
  class CreateBacteriaPopulation < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true

    # return type from the mutation
    type Types::BacteriaPopulationType

    def resolve(name: nil)
      BacteriaPopulation.create!(
        name:
      )
    end
  end
end
