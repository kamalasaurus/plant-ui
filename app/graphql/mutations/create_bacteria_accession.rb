# frozen_string_literal: true

module Mutations
  class CreateBacteriaAccession < BaseMutation
    # arguments passed to the `resolve` method
    argument :bacteria_population_id, Integer, required: true
    argument :date_collected, String
    argument :wild, Boolean
    argument :organ_tissue, String
    argument :comment, String
    argument :curator, String
    argument :species_id, Integer, required: true
    argument :source_species_id, Integer, required: true
    argument :source_number, String
    argument :sample_identity, String

    # return type from the mutation
    type Types::BacteriaAccessionType

    def resolve(
      bacteria_population_id: nil,
      date_collected: nil,
      wild: nil,
      organ_tissue: nil,
      comment: nil,
      curator: nil,
      species_id: nil,
      source_species_id: nil,
      source_number: nil,
      sample_identity: nil
    )
      BacteriaAccession.create!(
        bacteria_population_id:,
        date_collected:,
        wild:,
        organ_tissue:,
        comment:,
        curator:,
        species_id:,
        source_species_id:,
        source_number:,
        sample_identity:
      )
    end
  end
end
