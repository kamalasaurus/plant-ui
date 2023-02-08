# frozen_string_literal: true

module Mutations
  class CreateSpecies < BaseMutation
    # arguments passed to the `resolve` method
    argument :genus, String, required: true
    argument :species, String, required: true

    # return type from the mutation
    type Types::SpeciesType

    def resolve(genus: nil, species: nil)
      Species.create!(
        genus:,
        species:
      )
    end
  end
end
