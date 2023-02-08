module Mutations
  class CreateSeed < BaseMutation
    # arguments passed to the `resolve` method
    argument :generation, Integer, required: true
    argument :parent_id, Integer
    argument :accession_id, Integer, required: true
    argument :species_id, Integer, required: true

    # return type from the mutation
    type Types::SeedType

    def resolve(
      generation: nil,
      parent_id: nil,
      accession_id: nil,
      species_id: nil
    )
      Seed.create!(
        generation:,
        parent_id:,
        accession_id:,
        species_id:
      )
    end
  end
end
