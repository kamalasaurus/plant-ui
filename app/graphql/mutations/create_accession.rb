module Mutations
  class CreateAccession < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_id, Integer, required: true
    argument :accession_number, Integer, required: true

    # return type from the mutation
    type Types::AccessionType

    def resolve(population_id: nil, accession_number: nil)
      Species.create!(
        population_id: population_id,
        accession_number: accession_number
      )
    end
  end
end