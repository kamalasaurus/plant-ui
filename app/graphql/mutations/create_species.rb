# frozen_string_literal: true

module Mutations
  class CreateSpecies < BaseMutation
    # arguments passed to the `resolve` method
    argument :kingdom, String, required: true
    argument :genus, String, required: true
    argument :species, String, required: true
    argument :common_name, String, required: false

    # return type from the mutation
    type Types::SpeciesType

    def resolve(kingdom: nil, genus: nil, species: nil, common_name: nil)
      Species.create!(
        kingdom:,
        genus:,
        species:,
        common_name:
      )
    end
  end
end
