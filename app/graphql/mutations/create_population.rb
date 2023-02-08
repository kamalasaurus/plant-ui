module Mutations
  class CreatePopulation < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_name, String, required: true
    argument :subpopulation, String, required: true

    # return type from the mutation
    type Types::PopulationType

    def resolve(population_name: nil, subpopulation: nil)
      Population.create!(
        population_name:,
        subpopulation:
      )
    end
  end
end
