module Mutations
  class CreateCytometryReading < BaseMutation
    # arguments passed to the `resolve` method
    argument :accession_id, Integer, required: true
    argument :minimum_peak, Integer
    argument :mean_f2, Float
    argument :peak_pattern, Integer
    argument :chromosome_count, Integer
    argument :chromosome_count_certain, Boolean

    # return type from the mutation
    type Types::CytometryReadingType

    def resolve(
      accession_id: nil,
      minimum_peak: nil,
      mean_f2: nil,
      peak_pattern: nil,
      chromosome_count: nil,
      chromosome_count_certain: nil,
    )
      CytometryReading.create!(
        accession_id: accession_id,
        minimum_peak: minimum_peak,
        mean_f2: mean_f2,
        peak_pattern: peak_pattern,
        chromosome_count: chromosome_count,
        chromosome_count_certain: chromosome_count_certain
      )
    end
  end
end